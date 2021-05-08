part of 'values.dart';

/// ------------------
/// Naming conventions
/// dimmensions should be sorted alphabetically and first part of it should be contain place where is used.
///  EXAMPLE
///  if we use sth menu icon in app header.
///   - feature name is "Menu",
///   - so it should name appHeader_headerHeight
///  if we want use back arrow in app header
///   - it's should name appHeader_backArrowSize
///   etc.
///
///  For common dimensions like padding, margin etc.
///  names should start not from feature_name, but with part of size like:
///     - xSmall = 0.25x base
///     - small = 0.5x base
///     - base = to be specified
///     - large = 1.5x base
///     - xLarge = 2x base
///     - xxLarge = 3x base
///     - custom+[dimens] for Example = customMargin76
///
///  EXAMPLE
///  baseEdgeInsets
///
abstract class AppDimensions {
  /// base space
  static const double baseSpace = 16;

  /// edge insets
  static const double xSmallEdgeInsets2 = 2;
  static const double smallEdgeInsets4 = 4;
  static const double baseEdgeInsets8 = 8;
  static const double largeEdgeInsets12 = 12;
  static const double xLargeEdgeInsets16 = 16;
  static const double xxLargeEdgeInsets24 = 24;

  /// specific dimens
  static const double baseButtonCornerRadius = 12;
  static const double baseButtonElevation = 3.0;

/*   For the same buttons
  static const double buttonHeight = 48;
  static const double buttonHeightSmall = 36;
  */
}
