import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export '../../../app/router.dart';
export '../../../language/localization.dart';


///
/// Base page handled 4 customizable states like: content, error, loading, initial
/// All snackbars, dialogs and common widgets for every page could included here.
///

abstract class BasePage extends StatelessWidget {}
