import 'package:flutter/material.dart';
import 'magic_date_extension.dart';

/// Extension methods for nullable [TimeOfDay] objects.
extension MagicTimeExtension on TimeOfDay? {
  /// Checks if the nullable [TimeOfDay] is after another [TimeOfDay].
  ///
  /// Returns true if the current [TimeOfDay] instance is later in time compared to [toTime].
  ///
  /// Returns false if either the current [TimeOfDay] instance or [toTime] is null.
  bool isAfter(TimeOfDay? toTime) {
    if (this == null || toTime == null) return false;
    if (this!.hour > toTime.hour) {
      return true;
    } else if (this!.hour == toTime.hour) {
      return this!.minute > toTime.minute;
    } else {
      return false;
    }
  }

  /// Checks if the nullable [TimeOfDay] is before another [TimeOfDay].
  ///
  /// Returns true if the current [TimeOfDay] instance is earlier in time compared to [toTime].
  ///
  /// Returns false if either the current [TimeOfDay] instance or [toTime] is null.
  bool isBefore(TimeOfDay? toTime) {
    if (this == null || toTime == null) return false;
    if (this!.hour < toTime.hour) {
      return true;
    } else if (this!.hour == toTime.hour) {
      return this!.minute < toTime.minute;
    } else {
      return false;
    }
  }

  /// Formats the nullable [TimeOfDay] into a string representation.
  ///
  /// Uses the current date to create a [DateTime] object, then formats it according to [format].
  ///
  /// [placeHolder] is the string returned if the [TimeOfDay] is null.
  /// [format] specifies the format string used to format the [DateTime] object. Defaults to 'hh:mm a'.
  ///
  /// Returns the formatted time string or [placeHolder] if the [TimeOfDay] is null.
  String convert({String placeHolder = '', String format = 'hh:mm a'}) {
    if (this == null) return placeHolder;
    DateTime now = DateTime.now();
    final DateTime dateTime =
        DateTime(now.year, now.month, now.day, this!.hour, this!.minute);
    return dateTime.format(format: format, placeholder: placeHolder);
  }
}
