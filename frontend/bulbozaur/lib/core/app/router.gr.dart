// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../presentation/choose_home/page/choose_home_page.dart' as _i5;
import '../../presentation/login/page/login_page.dart' as _i3;
import '../../presentation/single_home/page/single_home_page.dart' as _i4;

class CodigeeRouter extends _i1.RootStackRouter {
  CodigeeRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.LoginPage();
        }),
    SingleHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SingleHomePage();
        }),
    ChooseHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ChooseHomePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginPageRoute.name, path: '/'),
        _i1.RouteConfig(SingleHomePageRoute.name, path: '/single-home-page'),
        _i1.RouteConfig(ChooseHomePageRoute.name, path: '/choose-home-page')
      ];
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/');

  static const String name = 'LoginPageRoute';
}

class SingleHomePageRoute extends _i1.PageRouteInfo {
  const SingleHomePageRoute() : super(name, path: '/single-home-page');

  static const String name = 'SingleHomePageRoute';
}

class ChooseHomePageRoute extends _i1.PageRouteInfo {
  const ChooseHomePageRoute() : super(name, path: '/choose-home-page');

  static const String name = 'ChooseHomePageRoute';
}
