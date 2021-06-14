// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/entities/deviceDisplay/device_display.dart' as _i9;
import '../../presentation/choose_home/page/choose_home_page.dart' as _i5;
import '../../presentation/create_schedule/page/create_schedule_page.dart'
    as _i6;
import '../../presentation/create_schedule/page/create_schedule_page_three.dart'
    as _i8;
import '../../presentation/create_schedule/page/create_schedule_page_two.dart'
    as _i7;
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
        builder: (data) {
          final args = data.argsAs<SingleHomePageRouteArgs>();
          return _i4.SingleHomePage(args.idOfHouse);
        }),
    ChooseHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ChooseHomePage();
        }),
    CreateSchedulePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.CreateSchedulePage();
        }),
    CreateSchedulePageTwoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateSchedulePageTwoRouteArgs>();
          return _i7.CreateSchedulePageTwo(iconId: args.iconId);
        }),
    CreateSchedulePageThreeRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<CreateSchedulePageThreeRouteArgs>();
              return _i8.CreateSchedulePageThree(
                  iconId: args.iconId,
                  nameOfSchedule: args.nameOfSchedule,
                  fromTime: args.fromTime,
                  toTime: args.toTime,
                  devices: args.devices);
            })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginPageRoute.name, path: '/'),
        _i1.RouteConfig(SingleHomePageRoute.name, path: '/single-home-page'),
        _i1.RouteConfig(ChooseHomePageRoute.name, path: '/choose-home-page'),
        _i1.RouteConfig(CreateSchedulePageRoute.name,
            path: '/create-schedule-page'),
        _i1.RouteConfig(CreateSchedulePageTwoRoute.name,
            path: '/create-schedule-page-two'),
        _i1.RouteConfig(CreateSchedulePageThreeRoute.name,
            path: '/create-schedule-page-three')
      ];
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/');

  static const String name = 'LoginPageRoute';
}

class SingleHomePageRoute extends _i1.PageRouteInfo<SingleHomePageRouteArgs> {
  SingleHomePageRoute({required int idOfHouse})
      : super(name,
            path: '/single-home-page',
            args: SingleHomePageRouteArgs(idOfHouse: idOfHouse));

  static const String name = 'SingleHomePageRoute';
}

class SingleHomePageRouteArgs {
  const SingleHomePageRouteArgs({required this.idOfHouse});

  final int idOfHouse;
}

class ChooseHomePageRoute extends _i1.PageRouteInfo {
  const ChooseHomePageRoute() : super(name, path: '/choose-home-page');

  static const String name = 'ChooseHomePageRoute';
}

class CreateSchedulePageRoute extends _i1.PageRouteInfo {
  const CreateSchedulePageRoute() : super(name, path: '/create-schedule-page');

  static const String name = 'CreateSchedulePageRoute';
}

class CreateSchedulePageTwoRoute
    extends _i1.PageRouteInfo<CreateSchedulePageTwoRouteArgs> {
  CreateSchedulePageTwoRoute({required int iconId})
      : super(name,
            path: '/create-schedule-page-two',
            args: CreateSchedulePageTwoRouteArgs(iconId: iconId));

  static const String name = 'CreateSchedulePageTwoRoute';
}

class CreateSchedulePageTwoRouteArgs {
  const CreateSchedulePageTwoRouteArgs({required this.iconId});

  final int iconId;
}

class CreateSchedulePageThreeRoute
    extends _i1.PageRouteInfo<CreateSchedulePageThreeRouteArgs> {
  CreateSchedulePageThreeRoute(
      {required int iconId,
      required String nameOfSchedule,
      required String fromTime,
      required String toTime,
      required List<_i9.deviceDisplay> devices})
      : super(name,
            path: '/create-schedule-page-three',
            args: CreateSchedulePageThreeRouteArgs(
                iconId: iconId,
                nameOfSchedule: nameOfSchedule,
                fromTime: fromTime,
                toTime: toTime,
                devices: devices));

  static const String name = 'CreateSchedulePageThreeRoute';
}

class CreateSchedulePageThreeRouteArgs {
  const CreateSchedulePageThreeRouteArgs(
      {required this.iconId,
      required this.nameOfSchedule,
      required this.fromTime,
      required this.toTime,
      required this.devices});

  final int iconId;

  final String nameOfSchedule;

  final String fromTime;

  final String toTime;

  final List<_i9.deviceDisplay> devices;
}
