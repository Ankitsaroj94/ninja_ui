import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// A custom dialog widget that displays a child widget within a styled container.
///
/// The dialog is centered on the screen and has customizable dimensions.
/// It features a white background with rounded corners and a shadow effect.
class CustomDialog extends StatelessWidget {
  /// Creates a [CustomDialog].
  ///
  /// The [child] parameter is required and represents the widget to be displayed inside the dialog.
  /// The [height] and [width] parameters are optional and define the dimensions of the dialog.
  const CustomDialog({super.key, required this.child, this.height, this.width});

  /// The widget to display inside the dialog.
  final Widget child;

  /// The height of the dialog. If null, the dialog will adjust its height based on its content.
  final double? height;

  /// The width of the dialog. If null, the dialog will adjust its width based on its content.
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: AppColors.transparent,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: 10,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
