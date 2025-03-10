import 'package:flutter/material.dart';

/// Extension on [num] to provide convenient methods for setting the width of a widget.
extension MagicNumExtension on num {
  /// Returns a [SizedBox] with the width set to the value of this [num].
  ///
  /// Optionally, a [child] widget can be passed along with an optional [key].
  Widget width({Widget? child, Key? key}) => SizedBox(
        key: key,
        width: toDouble(),
        child: child,
      );

  /// Returns a [SizedBox] with the height set to the value of this [num].
  ///
  /// Optionally, a [child] widget can be passed along with an optional [key].
  Widget height({Widget? child, Key? key}) => SizedBox(
        key: key,
        height: toDouble(),
        child: child,
      );

  /// Returns a square [SizedBox] with dimensions equal to the value of this [num].
  ///
  /// Optionally, a [child] widget can be passed along with an optional [key].
  Widget square({Widget? child, Key? key}) => SizedBox.square(
        dimension: toDouble(),
        key: key,
        child: child,
      );
}
