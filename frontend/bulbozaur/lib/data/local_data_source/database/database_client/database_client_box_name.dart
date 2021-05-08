import 'database_client_box_name_factory.dart';

abstract class DatabaseClientBoxName {
  static const _general = 'general';

  static String general() => DatabaseClientBoxNameFactory.build(type: _general);
}
