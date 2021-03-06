part of 'values.dart';

/// ------------------
/// Naming conventions
/// images should be sorted alphabetically and first part of it should be contain place where is used.
///  EXAMPLE
///  if we use sth menu icon in app header.
///   - feature name is "Menu",
///   - so it should name appHeader_menu.svg
///  if we want use back arrow in app header
///   - it's should name appHeader_backArrow.svg
///   etc.
///
///  For common images, icons etc.
///  names should start not from feature_name, but from part 'app'
///  EXAMPLE
///  app_menu.svg
///
abstract class AppImages {

    static final _pngPath = 'assets/images/png';
    static final _svgPath = 'assets/images/svg';

    static final svgLogoOfTheApp='$_svgPath/logo.svg';
    static final svgNameOfTheApp='$_svgPath/bulb-ozaur.svg';





}
