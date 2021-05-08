import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/injection/injection.dart';
import 'core/logger/logger.dart';
import 'data/local_data_source/database/database_client/database_client_factory.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(
    DevicePreview(
      enabled: false, // false - disable permanently | true enable permanently
      builder: (context) => const CodigeeApp(),
    ),
  );
}

Future<void> initServices() async {
  /// Executes whilst app splash screen
  AppLogger.init();
  await configureLogAndErrorHandler();
  await configureDependencies();
//  await configureDatabases();
}

Future<void> configureLogAndErrorHandler() async {
  ///configure analytics, crashlytics, and logger here.
}

// Future<void> configureDatabases() async {
//   await DatabaseClientFactory.create();
// }
