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
import 'package:project_skeleton/domain/entities/single_home_entites/schedule_entity.dart';
import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

class SingleHomePage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SingleHomeCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) =>
      BlocListener<SingleHomeCubit, SingleHomeState>(
        listener: (context, state) => state.maybeWhen(
            createSchedule: () =>
                context.navigator.push(CreateSchedulePageRoute()),
            failure: () => Container(
                  child: Text("its some problems"),
                ),
            orElse: () => Container()),
        child: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: [
            _singleHomeFirstPage(context),
            _statisticsHome(context),
            _controlSchedule(context, schedule),
            _settingsHome(context)
          ],
        ),
      );

  Widget _singleHomeFirstPage(BuildContext context) {
    bool manualControl = false;
    var _listOfRooms = [
      "kitchen",
      "living room",
      "pikachu",
      "snorlax",
      "charmander",
      "rattata"
    ];

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
                CupertinoSwitch(
                  value: manualControl,
                  onChanged: (bool value) {
                    _didChangeManualControl(context, value);
                    manualControl = true;
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _listOfRooms.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) => Row(children: [
                Container(
                  child: SvgPicture.asset(AppImages.svgBulbLogoCircle),
                  margin: const EdgeInsets.only(
                      left: 40, right: 20, top: 20, bottom: 20),
                ),
                Container(
                  child: Text(
                    _listOfRooms[index],
                    style: TextStyles.singleHomeNameOfRoom,
                  ),
                  margin: const EdgeInsets.only(top: 20),
                ),
                Spacer(),
                Container(
                  child: CupertinoSwitch(value: false, onChanged: null),
                  margin: const EdgeInsets.only(right: 50, top: 20),
                )
              ]),
            ),
          ),
          _downBar(controller, [true, false, false, false]),
        ],
      ),
    );
  }

  Widget _statisticsHome(BuildContext context) {
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
            labelX: ['Day 1 ', 'Day 2', 'Day 3', 'Day 4'],
            labelY: ['20%', '40%', '60%', '80%', '100%'],
            showDescription: true,
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

  List<ScheduleEntity> schedule = [
    ScheduleEntity(name: "Night", id: 1),
    ScheduleEntity(name: "Day", id: 2),
    ScheduleEntity(name: "Evening", id: 3)
  ];

  Widget _controlSchedule(
          BuildContext context, List<ScheduleEntity> scheduleButtons) =>
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
                    child: TextButton(
                        onPressed: () => _createControlSchedule(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 40.0),
                              child: Icon(_selectIcon(schedule[index].id)),
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
    if (index > 5) {
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

  void _didChangeManualControl(BuildContext context, bool isTrue) =>
      context.read<SingleHomeCubit>().didChangeManualControl(isTrue);

  void _createControlSchedule(BuildContext context) =>
      context.read<SingleHomeCubit>().createControlSchedule();
}
