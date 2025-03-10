import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import 'magic_loader.dart';

class PrimaryImageButton extends StatelessWidget {
  const PrimaryImageButton({
    super.key,
    this.activeBackgroundColor,
    this.disabledBackgroundColor,
    this.activeForegroundColor,
    this.disabledForegroundColor,
    this.isLoading = false,
    this.onTap,
    this.buttonHeight = 34,
    this.width,
    this.radius = 4,
    required this.imagePath,
  });

  final Color? activeBackgroundColor;
  final Color? disabledBackgroundColor;
  final Color? activeForegroundColor;
  final Color? disabledForegroundColor;
  final String imagePath;
  final bool isLoading;
  final VoidCallback? onTap;
  final double buttonHeight;
  final double? width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // Determine the active foreground color
    Color activeForegroundColor =
        this.activeForegroundColor ?? AppColors.primary;

    // Determine the disabled foreground color
    Color disabledForegroundColor =
        this.disabledForegroundColor ?? AppColors.gray;

    // Check if the button is disabled
    final isDisabled = onTap == null;

    // Define the button press action
    void onPress() {
      HapticFeedback.lightImpact();
      onTap!();
    }

    return Material(
      color: AppColors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          // Set background color based on disabled state
          color: AppColors.transparent,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap:
              isDisabled
                  ? null
                  : isLoading
                  ? null
                  : onPress,
          child: AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4),
            height: buttonHeight,
            width: width,
            duration: 500.milliseconds,
            child:
                isLoading
                    ? MagicLoader(
                      size: buttonHeight / 2,
                      color:
                          isDisabled
                              ? disabledForegroundColor
                              : activeForegroundColor,
                    )
                    : Image.asset(
                      imagePath,
                      color:
                          isDisabled
                              ? disabledForegroundColor
                              : activeForegroundColor,
                    ),
          ),
        ),
      ),
    );
  }
}
