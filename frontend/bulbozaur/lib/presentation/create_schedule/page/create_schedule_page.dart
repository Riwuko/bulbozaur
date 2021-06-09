import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
import 'package:project_skeleton/core/presentation/values/values.dart';
import 'package:project_skeleton/presentation/create_schedule/cubit/create_schedule_cubit.dart';

class CreateSchedulePage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<CreateScheduleCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocListener<CreateScheduleCubit, CreateScheduleState>(
          listener: (context, state) => state.maybeWhen(
                orElse: () => print(""),
                choosedIcon: (idIcon) => context.navigator
                    .push(CreateSchedulePageTwoRoute(iconId: idIcon)),
              ),
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Add schedule",
                      style:
                          TextStyles.singleHomeManual.copyWith(fontSize: 40.0)),
                  Text("Select icon",
                      style: TextStyles.singleHomeNameOfRoom
                          .copyWith(fontSize: 20.0)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      children: [
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 0),
                            icon: Icon(Icons.home)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 1),
                            icon: Icon(Icons.bed)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 2),
                            icon: Icon(Icons.doorbell)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 3),
                            icon: Icon(Icons.mode_night)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 4),
                            icon: Icon(Icons.alarm)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 5),
                            icon: Icon(Icons.party_mode)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 6),
                            icon: Icon(Icons.home)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 7),
                            icon: Icon(Icons.ac_unit_outlined)),
                        IconButton(
                            iconSize: 70.0,
                            onPressed: () => _didTapIcon(context, 8),
                            icon: Icon(Icons.ac_unit_outlined)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));

  void _didTapIcon(BuildContext context, int idIcon) =>
      context.read<CreateScheduleCubit>().didChangeManualControl(idIcon);
}
