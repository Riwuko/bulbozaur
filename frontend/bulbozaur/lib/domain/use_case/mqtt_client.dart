import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:typed_data/typed_buffers.dart';

part 'mqtt_client.g.dart';

class MqttSendingSignal {
  String server = "adres Ip";
  int port = 1234;
  String clientIdentifier = "";
  String subTopic = "You need to subscribe to the topic";
  String publishTopic = "topic to send a message";
  MqttQos qos = MqttQos.atLeastOnce;
  late MqttServerClient mqttClient;

  MqttSendingSignal(this.clientIdentifier, this.server, this.port,
      this.subTopic, this.publishTopic);

  Future<void> contactMQTT() async {
    //  mqttClient = MqttClient.withPort(server, clientIdentifier, port);
    mqttClient = MqttServerClient.withPort(server, clientIdentifier, port);
    mqttClient.logging(on: true);

    mqttClient.onConnected = _onConnected;

    mqttClient.onDisconnected = _onDisconnected();

    mqttClient.onSubscribed = _onSubscribed;

    mqttClient.onSubscribeFail = _onSubscribeFail;

    await log();
  }

  Future<void> publishMessage(int brightness, String isOn) async {
    /// int array
    Uint8Buffer uint8buffer = Uint8Buffer();
    var result = message(brightness, isOn, 10);
    var msg1 = result.toJson();
    var msg = json.encode(msg1);

    /// string turn into String.getBytes int array similar to the java?
    var codeUnits = msg.codeUnits;
    //uint8buffer.add()
    uint8buffer.addAll(codeUnits);
    mqttClient.publishMessage(publishTopic, qos, uint8buffer);
  }

  _onData(List<MqttReceivedMessage<MqttMessage>> data) {
    Uint8Buffer uint8buffer = Uint8Buffer();
    var messageStream = MqttByteBuffer(uint8buffer);
    data.forEach((MqttReceivedMessage<MqttMessage> m) {
      /// writing data to the array messageStream
      m.payload.writeTo(messageStream);

      ///print it out
      print(uint8buffer.toString());
    });
  }

  _onConnected() {
    _log("_onConnected");
    publishMessage(80, "on");

    /// when the connection is successful subscription news
    mqttClient.subscribe(subTopic, qos);
  }

  _onDisconnected() {
    _log("_onDisconnect");
  }

  _onSubscribed(String topic) {
    _log("_onConnected");
  }

  _onSubscribeFail(String topic) {
    _log("_onSubscribeFail");
  }

  _log(String msg) {
    print("MQTT-->$msg");
  }

  Future<void> log() async {
    final connMessage = MqttConnectMessage()
        .authenticateAs('username', 'password')
        .withWillTopic('willtopic')
        .withWillMessage('Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);
    mqttClient.connectionMessage = connMessage;
    try {
      mqttClient.connect();
    } catch (e) {
      print('Exception: $e');
      mqttClient.disconnect();
    }
    // print(mqttClient);
  }
}

@JsonSerializable()
class message {
  int brightness = 50;
  String turn = "on";
  int white = 0;

  message(this.brightness, this.turn, this.white);

  Map<String, dynamic> toJson() => _$messageToJson(this);
}
