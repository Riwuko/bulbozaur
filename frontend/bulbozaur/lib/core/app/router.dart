import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_skeleton/presentation/choose_home/page/choose_home_page.dart';
import 'package:project_skeleton/presentation/create_schedule/page/create_schedule_page.dart';
import 'package:project_skeleton/presentation/create_schedule/page/create_schedule_page_two.dart';
import 'package:project_skeleton/presentation/login/page/login_page.dart';
import 'package:project_skeleton/presentation/single_home/page/single_home_page.dart';

import 'router.gr.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: SingleHomePage),
    MaterialRoute(page: ChooseHomePage),
    MaterialRoute(page: CreateSchedulePage),
    MaterialRoute(page: CreateSchedulePageTwo)
  ],
)
class $CodigeeRouter {}

extension RouterExtension on BuildContext {
  static final CodigeeRouter _instance = CodigeeRouter();
  StackRouter get navigator => AutoRouter.of(this);
  CodigeeRouter get router => _instance;
}
