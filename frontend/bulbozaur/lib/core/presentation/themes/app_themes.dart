import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../values/values.dart';

abstract class Themes {
  static final ThemeData lightTheme = ThemeData(
    backgroundColor: _colorScheme.background,
    brightness: Brightness.light,
    primaryColor: _colorScheme.primary,
    scaffoldBackgroundColor: _colorScheme.background,
    colorScheme: _colorScheme,
    dialogTheme: _dialogTheme,
    textTheme: _textTheme,
  );

  static final _colorScheme = const ColorScheme.light().copyWith(
    primary: Colors.blue,
    primaryVariant: Colors.blueAccent,
    secondary: Colors.red,
    secondaryVariant: Colors.red,
    background: AppColors.white,
    surface: Colors.white,
    error: Colors.redAccent,
    onPrimary: Colors.blue,
    onSecondary: Colors.blue,
    onBackground: Colors.blue,
    onSurface: Colors.black,
    onError: Colors.white,
  );

  static final _dialogTheme = DialogTheme(
    backgroundColor: Colors.white,
    titleTextStyle: _textTheme.bodyText1,
    contentTextStyle: _textTheme.bodyText1,
  );

  static const _textTheme = TextTheme(
    headline1: TextStyles.headline1,
    bodyText1: TextStyles.body1,
    button: TextStyles.button,
  );
}
