import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  Size get screenSize => MediaQuery.sizeOf(this);

  TextTheme get textTheme => TextTheme.of(this);

  void nextFocus() => FocusScope.of(this).nextFocus();
}
