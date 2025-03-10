import 'package:flutter/material.dart';

/// Extension on [Widget] to provide convenient methods for wrapping
/// widgets with [Flexible], [Expanded], [Center], and debug widgets.
extension MagicWidgetExtension on Widget {
  /// Wraps the widget in a [Flexible] widget.
  ///
  /// The [fit] parameter determines how the child is resized within
  /// the parent [Flex] container. It defaults to [FlexFit.loose].
  ///
  /// The [flex] parameter defines the flex factor, defaulting to `1`.
  ///
  /// The [key] parameter is optional and can be used to provide a
  /// [Key] for the [Flexible] widget.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Flexible Text').flexible(fit: FlexFit.tight, flex: 2);
  /// ```
  Widget flexible({
    FlexFit fit = FlexFit.loose,
    int flex = 1,
    Key? key,
  }) =>
      Flexible(
        fit: fit,
        flex: flex,
        key: key,
        child: this,
      );

  /// Wraps the widget in an [Expanded] widget.
  ///
  /// The [flex] parameter defines the flex factor, defaulting to `1`.
  ///
  /// The [key] parameter is optional and can be used to provide a
  /// [Key] for the [Expanded] widget.
  ///
  /// Example usage:
  /// ```dart
  /// Container().expanded(flex: 3);
  /// ```
  Widget expanded({
    int flex = 1,
    Key? key,
  }) =>
      Expanded(
        flex: flex,
        key: key,
        child: this,
      );

  /// Wraps the widget in a [Center] widget.
  ///
  /// The [key] parameter is optional and can be used to provide a
  /// [Key] for the [Center] widget.
  ///
  /// Example usage:
  /// ```dart
  /// Container().center();
  /// ```
  Widget center({
    Key? key,
  }) =>
      Center(
        key: key,
        child: this,
      );

  /// Wraps the widget in a [Container] with a debug color.
  ///
  /// The [key] parameter is optional and can be used to provide a
  /// [Key] for the [Container].
  ///
  /// The [color] parameter specifies the color of the debug container,
  /// defaulting to red.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Debug').debugContainer();
  /// ```
  Widget debugContainer({
    Key? key,
    Color color = Colors.red,
  }) =>
      Container(
        key: key,
        color: color,
        child: this,
      );

  /// Wraps the widget in a [Container] with a debug border.
  ///
  /// The [key] parameter is optional and can be used to provide a
  /// [Key] for the [Container].
  ///
  /// The [color] parameter specifies the color of the border,
  /// defaulting to red.
  ///
  /// The [thickness] parameter specifies the width of the border,
  /// defaulting to `1`.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Debug Border').debugBorder();
  /// ```
  Widget debugBorder({
    Key? key,
    Color color = Colors.red,
    double thickness = 1,
  }) =>
      Container(
        key: key,
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: thickness,
          ),
        ),
        child: this,
      );
}
