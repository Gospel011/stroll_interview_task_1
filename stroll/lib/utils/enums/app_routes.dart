import 'package:stroll/utils/extensions/string_extensions.dart';

enum AppRoutes {
  home;

  String get path => name.kebabCase;
}
