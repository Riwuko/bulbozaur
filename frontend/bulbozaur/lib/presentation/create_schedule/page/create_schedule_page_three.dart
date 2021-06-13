import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
import 'package:project_skeleton/core/presentation/values/values.dart';
import 'package:project_skeleton/domain/entities/deviceDisplay/device_display.dart';
import 'package:project_skeleton/presentation/create_schedule/cubit/create_schedule_cubit.dart';

class CreateSchedulePageThree extends BasePage {
  final int iconId;
  final String nameOfSchedule;
  final String fromTime;
  final String toTime;
  final List<deviceDisplay> devices;

  CreateSchedulePageThree(
      {required this.iconId,
      required this.nameOfSchedule,
      required this.fromTime,
      required this.toTime,
      required this.devices});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<CreateScheduleCubit>()..init(),
        child: _Body(iconId, nameOfSchedule, fromTime, toTime, devices),
      );
}

class _Body extends StatefulWidget {
  final int iconId;
  final String name;
  final String fromTime;
  final String toTime;
  final List<deviceDisplay> devices;
  _Body(this.iconId, this.name, this.fromTime, this.toTime, this.devices);

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    double _currentSlide = 0;
    bool manualControl = false;

    void _changeManual(bool value) {
      setState(() => manualControl = value);
      manualControl = value;

      _didChangeManualControl(context, value);
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text("Add schedule",
                style: TextStyles.singleHomeManual.copyWith(fontSize: 40.0)),
          ),
          Text("Choos lights",
              style: TextStyles.singleHomeNameOfRoom.copyWith(fontSize: 20.0)),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Manual control", style: TextStyles.singleHomeManual),
                Switch(
                  value: manualControl,
                  onChanged: (bool value) => _changeManual(value),
                  activeTrackColor: Colors.blueGrey,
                  activeColor: Colors.blue,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.devices.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) =>
                    ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 1000),
                      elevation: 1,
                      expansionCallback: (int item, bool status) {
                        setState(() {
                          widget.devices[index].isExpanded =
                              status ? false : true;
                        });
                        print(widget.devices[index].isExpanded);
                        _didChangeDevice(context, widget.devices);
                      },
                      children: [
                        ExpansionPanel(
                            headerBuilder: (BuildContext context,
                                    bool isExpanded) =>
                                Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                          AppImages.svgBulbLogoCircle),
                                      margin: const EdgeInsets.only(
                                          left: 40,
                                          right: 20,
                                          top: 20,
                                          bottom: 20),
                                    ),
                                    Container(
                                      child: Text(
                                        widget.devices[index].name,
                                        style: TextStyles.singleHomeNameOfRoom,
                                      ),
                                      margin: const EdgeInsets.only(top: 20),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Switch(
                                        value: widget.devices[index].isTurnOn,
                                        onChanged: (value) {
                                          setState(() {
                                            widget.devices[index].isTurnOn =
                                                value;
                                          });
                                          _didChangeDevice(
                                              context, widget.devices);
                                        },
                                      ),
                                      margin: const EdgeInsets.only(
                                          right: 50, top: 20),
                                    )
                                  ],
                                ),
                            isExpanded: widget.devices[index].isExpanded,
                            body: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blue,
                                inactiveTrackColor: Colors.blue[100],
                                trackShape: RectangularSliderTrackShape(),
                                trackHeight: 4.0,
                                thumbColor: Colors.blueGrey,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 12.0),
                                overlayColor: Colors.red.withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 28.0),
                              ),
                              child: Slider(
                                min: 0.0,
                                max: 100.0,
                                value: widget.devices[index].brightness,
                                onChanged: (value) {
                                  setState(() {
                                    widget.devices[index].brightness = value;
                                  });
                                  _didChangeDevice(context, widget.devices);
                                },
                              ),
                            ))
                      ],
                    )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40.0),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.07,
            child: TextButton(
                onPressed: () => null,
                child: Text("Create schedule"),
                style: ButtonStyles.loginPageButton),
          ),
        ],
      ),
    );
  }

  void _didTapCreate(BuildContext context, int idIcon, String name, String from,
          String to, List<deviceDisplay> devices) =>
      context
          .read<CreateScheduleCubit>()
          .didTapCreateScheduleButton(idIcon, name, from, to, devices);

  void _didChangeManualControl(BuildContext context, bool isTrue) =>
      context.read<CreateScheduleCubit>().didChangeManual(isTrue);

  void _didChangeDevice(BuildContext context, List<deviceDisplay> devices) =>
      context.read<CreateScheduleCubit>().didChangeDevice(devices);
}
