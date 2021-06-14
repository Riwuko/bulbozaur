import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_skeleton/core/app/router.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
import 'package:project_skeleton/core/presentation/values/values.dart';
import 'package:project_skeleton/domain/entities/deviceDisplay/device_display.dart';
import 'package:project_skeleton/domain/entities/measurement_entity.dart';
import 'package:project_skeleton/domain/entities/schedule_entites/schedule_entity.dart';
import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

class SingleHomePage extends BasePage {
  int idOfHouse;
  SingleHomePage(this.idOfHouse);
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SingleHomeCubit>()..start(idOfHouse),
        child: _Body(idOfHouse),
      );
}

class _Body extends StatefulWidget {
  final idOfHouse;

  const _Body(this.idOfHouse);

  State<StatefulWidget> createState() => _BodyState(idOfHouse);
}

class _BodyState extends State<_Body> {
  final idOfHouse;
  bool manualControl = false;
  _BodyState(this.idOfHouse);

  final PageController controller = PageController(initialPage: 0);

  void _changeManual(bool value) {
    setState(() => manualControl = value);
    manualControl = value;

    _didChangeManualControl(context, value, idOfHouse);
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SingleHomeCubit, SingleHomeState>(
        buildWhen: (p, c) => c is Displaying,
        builder: (context, state) => state.maybeWhen(
          orElse: () => Container(
            color: Colors.blue,
            child: Text("Stan nie przeszedl "),
          ),
          failure: () =>
              Container(child: Text("It was problem with download data")),
          startDisplaying: (devices, schedule, measure) => PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: [
              _singleHomeFirstPage(
                  context, manualControl, devices, schedule, measure),
              _statisticsHome(context, measure),
              _controlSchedule(context, schedule),
              _settingsHome(context)
            ],
          ),
        ),
        listener: (context, state) => state.maybeWhen(
            createSchedule: () =>
                context.navigator.push(CreateSchedulePageRoute()),
            failure: () => Container(
                  child: Text("its some problems"),
                ),
            orElse: () => Container()),
      );

  Widget _singleHomeFirstPage(
      BuildContext context,
      bool manualControl,
      List<deviceDisplay> devices,
      List<ScheduleEntity> schedule,
      List<List<MeasurementEntity>> measure) {
    double _currentSlide = 0;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(AppImages.pngHome1),
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
                itemCount: devices.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) =>
                    ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 1000),
                      elevation: 1,
                      expansionCallback: (int item, bool status) {
                        setState(() {
                          devices[index].isExpanded = status ? false : true;
                        });
                        print(devices[index].isExpanded);
                        _didChangeDevice(context, devices, schedule,
                            devices[index].id, idOfHouse, measure);
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
                                        devices[index].name,
                                        style: TextStyles.singleHomeNameOfRoom,
                                      ),
                                      margin: const EdgeInsets.only(top: 20),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Switch(
                                        value: devices[index].isTurnOn,
                                        onChanged: (value) {
                                          setState(() {
                                            if (manualControl == false) {
                                              devices[index].isTurnOn = value;
                                            }
                                          });
                                          _didChangeIfBulbTurnOn(
                                              context,
                                              devices,
                                              schedule,
                                              devices[index].id,
                                              idOfHouse,
                                              measure);
                                        },
                                      ),
                                      margin: const EdgeInsets.only(
                                          right: 50, top: 20),
                                    )
                                  ],
                                ),
                            isExpanded: devices[index].isExpanded,
                            body: Column(children: [
                              Text("The bulb value"),
                              SliderTheme(
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
                                  value: devices[index].brightness,
                                  onChanged: (value) {
                                    setState(() {
                                      if (devices[index].isTurnOn) {
                                        devices[index].brightness = value;
                                      }
                                    });
                                    _didChangeDevice(context, devices, schedule,
                                        index.toString(), idOfHouse, measure);
                                  },
                                ),
                              ),
                              Text("The white value:"),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.grey,
                                  inactiveTrackColor: Colors.grey,
                                  trackShape: RectangularSliderTrackShape(),
                                  trackHeight: 4.0,
                                  thumbColor: Colors.black,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 12.0),
                                  overlayColor: Colors.red.withAlpha(32),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 28.0),
                                ),
                                child: Slider(
                                  min: 0.0,
                                  max: 100.0,
                                  value: devices[index].whiteColor.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      if (devices[index].isTurnOn) {
                                        devices[index].whiteColor = value;
                                      }
                                    });
                                    _didChangeDevice(context, devices, schedule,
                                        index.toString(), idOfHouse, measure);
                                  },
                                ),
                              )
                            ]))
                      ],
                    )),
          ),
          _downBar(controller, [true, false, false, false]),
        ],
      ),
    );
  }

//  List<Feature> features = [
//     Feature(
//       title: "Drink Water",
//       color: Colors.blue,
//       data: [0.2, 0.8, 0.4, 0.7, 0.6],
//     ),
  Widget _statisticsHome(
      BuildContext context, List<List<MeasurementEntity>> measure) {
    List<Feature> features = [
      Feature(
          data: measure[0].map((e) => e.measureValue).toList(),
          color: Colors.yellow,
          title: "Light Level"),
      Feature(
          data: measure[1].map((e) => e.measureValue).toList(),
          color: Colors.blue,
          title: "Light Intensity"),
      Feature(
          data: measure[2].map((e) => e.measureValue).toList(),
          color: Colors.red,
          title: "Device action"),
    ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(
              "Home statistic",
              style: TextStyles.menuTitlePage,
            ),
          ),
          LineGraph(
            features: features,
            showDescription: true,
            labelY: measure[0].map((e) => e.measureValue.toString()).toList(),
            labelX: measure[0].map((e) => e.measureDate.toString()).toList(),
            graphColor: Colors.black,
            graphOpacity: 0.4,
            verticalFeatureDirection: true,
            descriptionHeight: 130,
            size: Size(MediaQuery.of(context).size.width * 1, 400),
          ),
          _downBar(controller, [false, true, false, false]),
        ],
      ),
    );
  }

  Widget _controlSchedule(
          BuildContext context, List<ScheduleEntity> schedule) =>
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Control schedule",
                style: TextStyles.menuTitlePage,
              ),
            ),
            Container(
              width: _theWidthOfTextField(context),
              height: _theWidthOfListView(context, schedule.length),
              child: ListView.builder(
                itemCount: schedule.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () => _createControlSchedule(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 40.0),
                              child: Icon(
                                  _selectIcon(int.parse(schedule[index].id))),
                            ),
                            Text('${schedule[index].name}'),
                          ],
                        ),
                        style: ButtonStyles.loginPageButton),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200.0,
                ),
                GestureDetector(
                  onTap: () => _createControlSchedule(context),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: new BoxDecoration(
                      color: AppColors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            _downBar(controller, [false, false, true, false])
          ],
        ),
      );

  Widget _settingsHome(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Settings",
                style: TextStyles.menuTitlePage,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    "Log out",
                  ),
                  style: ButtonStyles.loginPageButton),
            ),
            _downBar(controller, [false, false, false, true])
          ],
        ),
      );

  Widget _downBar(PageController controller, List<bool> whichWorks) {
    return Container(
      width: double.infinity,
      color: AppColors.button,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _singleCircle(whichWorks[0]),
          _singleCircle(whichWorks[1]),
          _singleCircle(whichWorks[2]),
          _singleCircle(whichWorks[3]),
        ],
      ),
    );
  }

  Widget _singleCircle(bool isActive) => Container(
        width: 40,
        height: 40,
        decoration: new BoxDecoration(
          color: isActive ? AppColors.activeCircles : AppColors.noActiveCirles,
          shape: BoxShape.circle,
        ),
      );

  double _theWidthOfTextField(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.8;

  double _theWidthOfListView(BuildContext context, int index) {
    if (index > 4) {
      return MediaQuery.of(context).size.width * 0.8;
    } else {
      return MediaQuery.of(context).size.width * 0.3 * index;
    }
  }

  IconData _selectIcon(int id) {
    switch (id) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.bed;
      case 2:
        return Icons.doorbell;
      case 3:
        return Icons.mode_night;
      case 4:
        return Icons.alarm;
      case 5:
        return Icons.party_mode;
      default:
        return Icons.home;
    }
  }

  List<Feature> features = [
    Feature(
      title: "Drink Water",
      color: Colors.blue,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Exercise",
      color: Colors.pink,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "Study",
      color: Colors.cyan,
      data: [0.5, 0.4, 0.85, 0.4, 0.7],
    ),
    Feature(
      title: "Water Plants",
      color: Colors.green,
      data: [0.6, 0.2, 0, 0.1, 1],
    ),
    Feature(
      title: "Grocery Shopping",
      color: Colors.amber,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
  ];

  void _didChangeManualControl(
          BuildContext context, bool isTrue, int buildingId) =>
      context
          .read<SingleHomeCubit>()
          .didChangeManualControl(isTrue, buildingId);

  void _didChangeDevice(
          BuildContext context,
          List<deviceDisplay> devices,
          List<ScheduleEntity> schedule,
          String idDevices,
          int idHome,
          List<List<MeasurementEntity>> measure) =>
      context
          .read<SingleHomeCubit>()
          .didChangeDevice(devices, schedule, idDevices, idHome, measure);

  void _didChangeIfBulbTurnOn(
          BuildContext context,
          List<deviceDisplay> devices,
          List<ScheduleEntity> schedule,
          String idDevices,
          int idHome,
          List<List<MeasurementEntity>> measure) =>
      context
          .read<SingleHomeCubit>()
          .didChangeIfBulbTurnOn(devices, schedule, idDevices, idHome, measure);

  void _createControlSchedule(BuildContext context) =>
      context.read<SingleHomeCubit>().createControlSchedule();
}
