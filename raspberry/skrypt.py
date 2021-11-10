import time
import sys
import os
import paho.mqtt.client as mqtt
import json
import threading
from graphqlclient import GraphQLClient
import queries
from datetime import datetime
from datetime import datetime
# ------hardcoded login values-------
login = "root@root.pl"
password = "root"
# ------------------------------------
#--------temporary hardcoded Identificators-----
BULB_ID = 2
SENSOR_ID = 1
#-----------------------------------------------
# ------Global - default Variables--------
BUILDING_ID = 1
DEFAULT_WHITE_LEVEL = 50
bulb_mode = "user"
bulb_state_user= "off"
bulb_state_value_user = 0
bulb_light_value_user = 0
power_consumption = 0
schedule_id = '0'
mode_topic = "bulb/mode"
schedule_topic = "bulb/schedule"
control_light_topic = "bulb/parameters"
measure_topic = "shellies/ShellyBulbDuo-8CAAB55F6265/light/0/power"
time_to = "00:00:00"
time_from = "00:00:00"
BROKER = "192.168.0.108"
PORT = 1883
# ----------------------------------------
 
#--------------------------------Clients--------------------------------
client = GraphQLClient('http://192.168.0.105:8000/graphql/')
client_mqtt = mqtt.Client()
client_mqtt.connect(BROKER, PORT, 60)
#---------------------------------------------------------------------------
authorization_variables = {'email': login, "password": password}
received_token = client.execute(queries.get_authorization_key, authorization_variables)
token_json = json.loads(received_token)
token = (token_json["data"]["tokenAuth"]["token"])
token_variable = {'token': token}
 
libdir = os.path.join(os.path.dirname(os.path.dirname(os.path.realpath(__file__))), 'lib')
if os.path.exists(libdir):
    sys.path.append(libdir)
import logging
from waveshare_TSL2591 import TSL2591
 
logging.basicConfig(level=logging.INFO)
sensor = TSL2591.TSL2591()
 
# ---------------------------------automatic mode--------------------------------------------------------
def readLux():
    lux = sensor.Lux
    sensor.TSL2591_SET_LuxInterrupt(50, 200)
    return lux
 
def sendLuxMeasurment(device_id):
    client.execute(queries.createMeasurment(device_id, readLux(), "Intensity"), token_variable)
 
def getControlValue(building_id):
    control_value_temp = client.execute(queries.getControlParameters(building_id), token_variable)
    control_value_json = json.loads(control_value_temp)
    control_value = (control_value_json["data"]["controlParameters"])
    for row in range(len(control_value)):
        if control_value[row]["lightValue"]:
            value = float(control_value[row]["lightValue"])
            return value
 
def checkControlValue(building_id):
    actual_measure = readLux()
    database_control_value = getControlValue(building_id)
    difference = actual_measure - database_control_value
    return difference
 
def setAutoLightIntensity(building_id, bulb_id):
    difference = checkControlValue(building_id)
    bulb_state_value = getBulbStateValue(building_id, bulb_id)
    state = "true"
    isChangeState = False
    isMaxValue = False
    isMinValue = False
 
    if bulb_state_value <=  5:
        isMinValue = True
    if bulb_state_value >= 96:
        isMaxValue = True
    if abs(difference) > 10:
        if difference > 0:
            if isMinValue == False:
                bulb_state_value -= 5
                isChangeState = True
            else:
                state = "false"
        else:
            if isMaxValue == False:
                bulb_state_value += 5
                isChangeState = True
    elif abs(difference) <= 10:
        print("do nothing")
        #10 points tolerance
 
    if isChangeState:
        #temporary solution --> in the future, lines below should be exported to methods, we should also receive clients from this method
        message = '{"brightness": %i, "white":%i, "turn": "on"}' % (bulb_state_value, DEFAULT_WHITE_LEVEL)
        client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message);
        client.execute(queries.updateDevice(bulb_id, state, bulb_state_value, DEFAULT_WHITE_LEVEL), token_variable)
        #----------------------------------------------------------------------------------------------------------
        sendLuxMeasurment(SENSOR_ID)
    print("difference %f" % difference)
    print("is change: %s" % isChangeState)
    print("bulb value: %f" % bulb_state_value)
 
def getBulbStateValue(building_id, device_id):
    bulb_state_temp = client.execute(queries.getActuatingDevice(building_id), token_variable)
    bulb_state_json = json.loads(bulb_state_temp)
    bulb_state = (bulb_state_json["data"]["actuatingDevices"])
    for row in range(len(bulb_state)):
        if bulb_state[row]["id"] == "%i" % device_id:
            return (float(bulb_state[row]["stateValue"]))
            break
 
def getBulbWhiteLevel(building_id, device_id):
    bulb_white_temp = client.execute(queries.getActuatingDevice(building_id), token_variable)
    bulb_white_json = json.loads(bulb_white_temp)
    bulb_white = (bulb_white_json["data"]["actuatingDevices"])
    for row in range(len(bulb_white)):
        if bulb_white[row]["id"] == "%i" % device_id:
            return (float(bulb_white[row]["lightLevel"]))
            break
 
def getBulbState(building_id, device_id):
    bulb_state_temp = client.execute(queries.getActuatingDevice(building_id), token_variable)
    bulb_state_json = json.loads(bulb_state_temp)
    bulb_state = (bulb_state_json["data"]["actuatingDevices"])
    for row in range(len(bulb_state)):
        if bulb_state[row]["id"] == "%i" % device_id:
            return (float(bulb_state[row]["state"]))
            break
# ----------------------------------------end of automatic mode------------------------------------
 
#--------------------------------------user mode----------------------------------------------
def userModeController(bulb_id):
    state_value = getBulbStateValue(BUILDING_ID, BULB_ID)
    white_level = getBulbWhiteLevel(BUILDING_ID, BULB_ID)
 
    if (state_value!=bulb_state_value_user) or ( white_level != bulb_light_value_user):
        #temporary solution --> in the future, lines below should be exported to methods, we should also receive clients from this method
        message = '{"brightness": %i, "white": %i, "turn": "%s"}' % (bulb_state_value_user, bulb_light_value_user, bulb_state_user)
        client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message)
        state = "false"
        if bulb_state_user == "on":
            state="true"
        client.execute(queries.updateDevice(bulb_id, state, bulb_state_value_user, bulb_light_value_user), token_variable)
        sendLuxMeasurment(SENSOR_ID)
#-------------------------------------end of user mode-------------------------------------------
#------------------------------Schedule mode----------------------------------------------------------
def getSchedule(token_variable):
    global schedule_id
    isScheduleOn = False
    actual_time = datetime.now().strftime("%H:%M:%S")
    schedule_temp = client.execute(queries.getSchedule(BUILDING_ID),token_variable)
    schedule_json = json.loads(schedule_temp)
    schedules = (schedule_json["data"]["schedules"])
    state_value_database = getBulbStateValue(BUILDING_ID, BULB_ID)
    white_level_database = getBulbWhiteLevel(BUILDING_ID, BULB_ID)
    state_database = getBulbState(BUILDING_ID, BULB_ID)
    for row in range(len(schedules)):
        print("schedule id in for")
        print(schedule_id)
        if(schedules[row]["isActive"]==True):
            print("schedule active: ")
            print(schedules[row]["id"])
            if(actual_time >= schedules[row]["timeFrom"] and actual_time <= schedules[row]["timeTo"]):
                isScheduleOn = True
                print(actual_time)
                print(schedules[row]["timeFrom"])
                print(schedules[row]["timeTo"])
                schedule_id = schedules[row]["id"]
                print("schedule in time: ")
                print(schedule_id)
 
                scheduleDevicesStates = schedules[row]["scheduleDevicesStates"]
                for dev in range(len(scheduleDevicesStates)):
                    id_schedule_device = scheduleDevicesStates[dev]["device"]["id"]
                    schedule_state_value = float(scheduleDevicesStates[dev]["stateValue"])
                    schedule_light_value = int(scheduleDevicesStates[dev]["lightLevel"])
                    schedule_state_temp = scheduleDevicesStates[dev]["state"]
                    schedule_state = "off"
 
                    if schedule_state_temp:
                        schedule_state = "on"
                    if (schedule_state_value!=state_value_database) or ( schedule_light_value != white_level_database):
                        if(schedule_state_temp):
                            message = '{"brightness": %i, "white": %i, "turn": "%s"}' % (schedule_state_value, schedule_light_value, schedule_state)
                            client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message)
                            client.execute(queries.updateDevice(BULB_ID, "true", schedule_state_value, schedule_light_value), token_variable)
                            sendLuxMeasurment(SENSOR_ID)
                            print("is on?")
                            print(isScheduleOn)
            elif(schedule_id == schedules[row]["id"]):
                if state_database:
                    message = '{"brightness": 0, "white": 0, "turn": "off"}'
                    client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message);
                    client.execute(queries.updateDevice(BULB_ID, "false", 0, 0), token_variable)
                    sendLuxMeasurment(SENSOR_ID)
        elif(schedule_id == schedules[row]["id"]):
            if state_database:
                message = '{"brightness": 0, "white": 0, "turn": "off"}'
                client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message);
                client.execute(queries.updateDevice(BULB_ID, "false", 0, 0), token_variable)
                sendLuxMeasurment(SENSOR_ID)
    if isScheduleOn == False:
        if state_database:
            message = '{"brightness": 0, "white": 0, "turn": "off"}'
            client_mqtt.publish("shellies/ShellyBulbDuo-8CAAB55F6265/light/0/set", message);
            client.execute(queries.updateDevice(BULB_ID, "false", 0, 0), token_variable)
            sendLuxMeasurment(SENSOR_ID)
 
#-------------------------end of Schedule mode--------------------------------------------------------
def getModeTopicPayload(payload):
    global bulb_mode
    global BUILDING_ID
    global BULB_ID
    global SENSOR_ID
 
    bulb_mode = (payload["mode"])
    BUILDING_ID = (payload["buildingId"])
    #BULB_ID = (payload["bulbId"])
    #SENSOR_ID = (payload["sensorId"])
 
def getParametersTopicPayload(payload):
    global BUILDING_ID
    global BULB_ID
    global bulb_light_value_user
    global bulb_state_user
    global bulb_state_value_user
 
    BUILDING_ID = (payload["buildingId"])
    #BULB_ID = (payload["bulbId"])
    bulb_light_value_user = (payload["lightValue"])
    bulb_state_user = (payload["state"])
    bulb_state_value_user = (payload["stateValue"])
 
def sendBulbStateValue(device_id, measure_value):
    client.execute(queries.createMeasurment(device_id, measure_value, "StateValue"), token_variable)
 
def sendBulbLightValue(device_id, measure_value):
    client.execute(queries.createMeasurment(device_id, measure_value, "LightValue"), token_variable)
 
def sendPowerConsumption(device_id):
    print("power: %f" %power_consumption)
    client.execute(queries.createMeasurment(device_id, power_consumption, "power"), token_variable)
 
def sendMeasurments(device_id, sensor_id):
    while True:
        sendLuxMeasurment(sensor_id)
        sendPowerConsumption(device_id)
        time.sleep(120) #5 minutes
 
 
#---------------------------------------MQTT methods---------------------------------------
def on_publish(client, userdata, result):
    print("data published \n")
 
def on_connect(client, userdata, flags, rc):
    client1.subscribe(mode_topic)
    client1.subscribe(schedule_topic)
    client_control_light.subscribe(control_light_topic)
    client_measure.subscribe(measure_topic)
 
def on_message(client, userdata, msg):
    global bulb_mode
    bulb_mode_payload = msg.payload
    bulb_mode_payload = json.loads(bulb_mode_payload)
    getModeTopicPayload(bulb_mode_payload)
 
def on_message_userModeController(client, userdata, msg):
    global bulb_parameters
    bulb_parameters_payload = msg.payload
    bulb_parameters_payload = json.loads(bulb_parameters_payload)
    getParametersTopicPayload(bulb_parameters_payload)
 
def on_message_measure(client, userdata, msg):
    if msg.payload.decode():
        global power_consumption
        power_consumption = float(msg.payload.decode())
        print("power: %f" %power_consumption)
 
#---------------------------------------------------------------------------------------------
def modeController(token_variable):
    global bulb_mode
    while True:
        if (bulb_mode == "user"):
            userModeController(BULB_ID)
        if (bulb_mode == "auto"):
            while bulb_mode=="auto":
                print("AUTO")
                setAutoLightIntensity(BUILDING_ID, BULB_ID)
                if bulb_mode != "auto":
                    break
        if (bulb_mode == "schedule"):
            print('teraz harmonogram')
            getSchedule(token_variable)
        time.sleep(1)
 
 #-----------------other Clients-----------------------------------
client1 = mqtt.Client()
client1.connect(BROKER, PORT)
client1.on_connect = on_connect
client1.on_message = on_message
 
client_control_light = mqtt.Client()
client_control_light.connect(BROKER, PORT)
client_control_light.on_connect = on_connect
client_control_light.on_publish = on_publish
client_control_light.on_message = on_message_userModeController
 
client_measure = mqtt.Client()
client_measure.connect(BROKER, PORT)
client_measure.on_connect = on_connect
client_measure.on_message = on_message_measure
 
#---------------------------------------------------------------
#----------------threads--------------------------
modeController_thread = threading.Thread(target=modeController, args=[token_variable])
sending_measurments_thread = threading.Thread(target=sendMeasurments, args=[BULB_ID, SENSOR_ID])
 
sending_measurments_thread.start()
modeController_thread.start()
#-------------------------------------------------
client1.loop_start()
client_control_light.loop_start()
client_measure.loop_start()