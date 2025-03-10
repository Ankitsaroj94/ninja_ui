import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import 'magic_loader.dart';

/// A customizable button widget that displays an image and supports loading state.
///
/// The `PrimaryImageButton` can be configured with different colors for active and disabled states,
/// and can display a loading indicator when needed.
///
/// The button's appearance and behavior can be customized using the provided parameters.
class PrimaryImageButton extends StatelessWidget {
  /// Creates a [PrimaryImageButton].
  ///
  /// The [imagePath] parameter must not be null.
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

  /// The background color when the button is active.
  final Color? activeBackgroundColor;

  /// The background color when the button is disabled.
  final Color? disabledBackgroundColor;

  /// The foreground color when the button is active.
  final Color? activeForegroundColor;

  /// The foreground color when the button is disabled.
  final Color? disabledForegroundColor;

  /// The path to the image asset to display on the button.
  final String imagePath;

  /// Whether the button is in a loading state.
  final bool isLoading;

  /// The callback to be invoked when the button is tapped.
  /// If null, the button is considered disabled.
  final VoidCallback? onTap;

  /// The height of the button.
  final double buttonHeight;

  /// The width of the button. If null, the button will size itself to fit its content.
  final double? width;

  /// The border radius of the button.
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
