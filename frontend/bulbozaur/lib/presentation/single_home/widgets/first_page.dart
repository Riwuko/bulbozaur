// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:project_skeleton/core/presentation/styles/styles.dart';
// import 'package:project_skeleton/core/presentation/values/values.dart';
// import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

// class CupertinoSwitchWidget extends StatefulWidget {
//   @override
//   _CupertinoSwitchWidgetState createState() => _CupertinoSwitchWidgetState();
// }

// class _singleHomeFirstPage extends State<CupertinoSwitchState> {
//   bool manualControl = false;
//   var _listOfRooms = [
//     "kitchen",
//     "living room",
//     "pikachu",
//     "snorlax",
//     "charmander",
//     "rattata"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Image.asset(AppImages.pngHome1),
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text("Manual control", style: TextStyles.singleHomeManual),
//                 CupertinoSwitch(
//                   value: manualControl,
//                   onChanged: (bool value) {
//                     _didChangeManualControl(context, value);
//                     manualControl = value;
//                   },
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _listOfRooms.length,
//               scrollDirection: Axis.vertical,
//               itemBuilder: (BuildContext context, int index) => Row(children: [
//                 Container(
//                   child: SvgPicture.asset(AppImages.svgBulbLogoCircle),
//                   margin: const EdgeInsets.only(
//                       left: 40, right: 20, top: 20, bottom: 20),
//                 ),
//                 Container(
//                   child: Text(
//                     _listOfRooms[index],
//                     style: TextStyles.singleHomeNameOfRoom,
//                   ),
//                   margin: const EdgeInsets.only(top: 20),
//                 ),
//                 Spacer(),
//                 Container(
//                   child: CupertinoSwitch(value: false, onChanged: null),
//                   margin: const EdgeInsets.only(right: 50, top: 20),
//                 )
//               ]),
//             ),
//           ),
//           _downBar(controller, [true, false, false, false]),
//         ],
//       ),
//     );
//   }

//   Widget _downBar(PageController controller, List<bool> whichWorks) {
//     return Container(
//       width: double.infinity,
//       color: AppColors.button,
//       height: 50,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _singleCircle(whichWorks[0]),
//           _singleCircle(whichWorks[1]),
//           _singleCircle(whichWorks[2]),
//           _singleCircle(whichWorks[3]),
//         ],
//       ),
//     );
//   }

//   Widget _singleCircle(bool isActive) => Container(
//         width: 40,
//         height: 40,
//         decoration: new BoxDecoration(
//           color: isActive ? AppColors.activeCircles : AppColors.noActiveCirles,
//           shape: BoxShape.circle,
//         ),
//       );

//   void _didChangeManualControl(BuildContext context, bool isTrue) =>
//       context.read<SingleHomeCubit>().didChangeManualControl(isTrue);
// }
