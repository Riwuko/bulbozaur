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

  static final svgLogoOfTheApp = '$_svgPath/logo.svg';
  static final svgNameOfTheApp = '$_svgPath/bulb-ozaur.svg';
  static final svgBulbLogoCircle = '$_svgPath/app_bulb_circle.svg';
  static final svgSingleHome = '$_svgPath/app_default_room.svg';

  static final svgPhotoHome1 = '$_svgPath/home_photo_1.svg';
  static final svgPhotoHome2 = '$_svgPath/home_photo_2.svg';
  static final svgPhotoHome3 = '$_svgPath/home_photo_3.svg';
  static final svgPhotoHome4 = '$_svgPath/home_photo_4.svg';
  static final svgPhotoHome5 = '$_svgPath/home_photo_5.svg';
  static final svgPhotoHome6 = '$_svgPath/home_photo_6.svg';
  static final svgPhotoHome7 = '$_svgPath/home_photo_7.svg';
  static final svgPhotoHome8 = '$_svgPath/home_photo_8.svg';
  static final svgPhotoHome9 = '$_svgPath/home_photo_9.svg';
  static final svgPhotoHome10 = '$_svgPath/home_photo_10.svg';

  static final pngHome1 = '$_pngPath/app_home1.png';
}
