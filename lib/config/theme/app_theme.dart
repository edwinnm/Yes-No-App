import 'package:flutter/material.dart';

const Color _customColor = Color(0xF6530D7E);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int colorIndex;
  AppTheme({this.colorIndex = 0})
      : assert(colorIndex >= 0 && colorIndex <= _colorThemes.length - 1,
            "Color index must be between 0 and ${_colorThemes.length}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[colorIndex]);
  }
}
