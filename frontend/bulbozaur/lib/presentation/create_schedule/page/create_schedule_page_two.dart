import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
import 'package:project_skeleton/core/presentation/values/values.dart';
import 'package:project_skeleton/presentation/create_schedule/cubit/create_schedule_cubit.dart';

class CreateSchedulePageTwo extends BasePage {
  final int iconId;

  CreateSchedulePageTwo({required this.iconId});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<CreateScheduleCubit>()..init(),
        child: _Body(iconId),
      );
}

class _Body extends StatefulWidget {
  final int iconId;
  _Body(this.iconId);

  @override
  State<StatefulWidget> createState() => _BodyState(iconId);
}

class _BodyState extends State<_Body> {
  final int iconId;
  final _nameController = TextEditingController();
  final _fromTime = TextEditingController();
  final _toTime = TextEditingController();

  _BodyState(this.iconId);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Add schedule",
                  style: TextStyles.singleHomeManual.copyWith(fontSize: 40.0)),
              Text("Name schedule",
                  style:
                      TextStyles.singleHomeNameOfRoom.copyWith(fontSize: 20.0)),
              Text("Set the duration",
                  style:
                      TextStyles.singleHomeNameOfRoom.copyWith(fontSize: 20.0)),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40.0),
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      fillColor: AppColors.textFieldColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: TextFormField(
                      controller: _fromTime,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Hour From",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: AppColors.textFieldColor),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: TextFormField(
                      controller: _toTime,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Hour To",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: AppColors.textFieldColor),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextButton(
                    onPressed: () => _didTapNextButton(context, iconId,
                        _nameController.text, _fromTime.text, _toTime.text),
                    child: Text("Next"),
                    style: ButtonStyles.loginPageButton),
              ),
            ],
          ),
        ),
      ));
  void _didTapNextButton(BuildContext context, int idIcon, String name,
          String from, String to) =>
      context
          .read<CreateScheduleCubit>()
          .didTapNextButton(idIcon, name, from, to);
}
