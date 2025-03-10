import 'package:flutter/material.dart';

/// A utility class for managing status colors.
abstract class MagicStatusColors {
  // A private map holding the default status colors.
  static final Map<String, Color> _statusColorsMap = {
    'success': Colors.green,
    'fail': Colors.red,
    'warning': Colors.yellow,
    'info': Colors.blue,
    'pending': Colors.orange,
    'error': Colors.purple,
    'neutral': Colors.grey,
    'primary': Colors.blueAccent,
    'secondary': Colors.teal,
    'highlight': Colors.amber,
    'critical': Colors.deepOrange,
    'caution': Colors.brown,
    'alert': Colors.pink,
    'completed': Colors.lightGreen,
    'inProgress': Colors.cyan,
    'archived': Colors.indigo,
    'draft': Colors.lime,
    'review': Colors.deepPurple,
    'disabled': Colors.blueGrey,
    'inactive': Colors.lightBlue,
    'default': Colors.transparent,
  };

  /// Sets the status colors map.
  ///
  /// Replaces the existing status colors map with the provided [statusColorsMap].
  ///
  /// [statusColorsMap] is a map where the keys are status labels and the values
  /// are corresponding [Color] objects.
  static set statusColorsMap(Map<String, Color> statusColorsMap) {
    _statusColorsMap.clear();
    _statusColorsMap.addAll(statusColorsMap);
  }

  /// Gets the current status colors map.
  ///
  /// Returns a map where the keys are status labels and the values are corresponding [Color] objects.
  static Map<String, Color> get statusColors => _statusColorsMap;

  /// Adds additional colors to the existing status colors map.
  ///
  /// [statusColorsMap] is a map where the keys are status labels and the values
  /// are corresponding [Color] objects. Existing colors with the same keys will be overwritten.
  static set addColorsMap(Map<String, Color> statusColorsMap) {
    _statusColorsMap.addAll(statusColorsMap);
  }
}
