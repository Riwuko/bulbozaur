import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_skeleton/presentation/login/page/login_page.dart';

import 'router.gr.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[

    MaterialRoute(page:LoginPage,initial: true),
  ],
)
class $CodigeeRouter {}

extension RouterExtension on BuildContext {
  StackRouter get navigator => AutoRouter.of(this);
  CodigeeRouter get router => CodigeeRouter();
}
