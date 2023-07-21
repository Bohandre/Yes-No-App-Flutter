import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
List<Color> _colorsThemes = [
  _customColor,
  Colors.blue.shade900,
  Colors.teal,
  Colors.green.shade800,
  Colors.yellow.shade800,
  Colors.orange.shade800,
  Colors.pink.shade600,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorsThemes.length - 1,
            'Colors must be between 0 and ${_colorsThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
