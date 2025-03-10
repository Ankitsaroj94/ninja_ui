import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/utils.dart';
import 'package:magic_extensions/magic_extensions.dart';
import 'package:magic_ui_color/magic_ui_color.dart';

/// A customizable outlined button widget with optional leading and trailing widgets.
///
/// The [PrimaryOutlinedButton] can be used to create a button with a label, optional
/// leading and trailing widgets, and customizable colors and styles.
///
/// The button can be in a loading state, and it supports both active and disabled states.
///
/// The [onTap] callback is triggered when the button is pressed.
class PrimaryOutlinedButton extends StatelessWidget {
  /// Creates a [PrimaryOutlinedButton].
  ///
  /// The [label] parameter must not be null.
  const PrimaryOutlinedButton({
    super.key,
    this.activeBackgroundColor,
    this.disabledBackgroundColor,
    this.activeForegroundColor,
    this.disabledForegroundColor,
    this.activeTextStyle,
    this.disabledTextStyle,
    this.leading,
    this.trailing,
    this.gap = 8,
    this.isLoading = false,
    this.onTap,
    this.height = 48,
    this.radius = 8,
    required this.label,
    this.width,
  });

  /// The background color when the button is active.
  final Color? activeBackgroundColor;

  /// The background color when the button is disabled.
  final Color? disabledBackgroundColor;

  /// The foreground color when the button is active.
  final Color? activeForegroundColor;

  /// The foreground color when the button is disabled.
  final Color? disabledForegroundColor;

  /// The text style when the button is active.
  final TextStyle? activeTextStyle;

  /// The text style when the button is disabled.
  final TextStyle? disabledTextStyle;

  /// An optional widget to display before the label.
  final Widget? leading;

  /// An optional widget to display after the label.
  final Widget? trailing;

  /// The gap between the leading/trailing widget and the label.
  final double gap;

  /// Whether the button is in a loading state.
  final bool isLoading;

  /// The callback to be called when the button is tapped.
  final VoidCallback? onTap;

  /// The height of the button.
  final double height;

  /// The width of the button.
  final double? width;

  /// The border radius of the button.
  final double radius;

  /// The label text of the button.
  final String label;

  @override
  Widget build(BuildContext context) {
    // Determine the active background color
    Color activeBackgroundColor =
        this.activeBackgroundColor ?? AppColors.primary;

    // Determine the disabled background color
    Color disabledBackgroundColor =
        this.disabledBackgroundColor ?? AppColors.gray.shade300;

    // Determine the active foreground color
    Color activeForegroundColor =
        this.activeForegroundColor ?? AppColors.primary;

    // Determine the disabled foreground color
    Color disabledForegroundColor =
        this.disabledForegroundColor ?? AppColors.primary;

    // Determine the active text style
    TextStyle activeTextStyle =
        this.activeTextStyle ??
        AppTextStyles.f16w400.copyWith(color: activeForegroundColor);

    // Determine the disabled text style
    TextStyle disabledTextStyle =
        this.disabledTextStyle ??
        AppTextStyles.f16w400.copyWith(color: disabledForegroundColor);

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
              border: Border.all(
                color:
                    isDisabled
                        ? disabledBackgroundColor
                        : activeBackgroundColor,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            height: height,
            width: width,
            duration: 500.milliseconds,
            child:
                isLoading
                    ? MagicLoader(
                      size: height / 2,
                      color:
                          isDisabled
                              ? disabledForegroundColor
                              : activeForegroundColor,
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Add leading widget if available
                        if (leading != null) leading!.marginOnly(right: gap),

                        // Add label with translation and style based on disabled state
                        label.toText(
                          style: (isDisabled
                                  ? disabledTextStyle
                                  : activeTextStyle)
                              .copyWith(height: -.2),
                        ),

                        // Add trailing widget if available
                        if (trailing != null) trailing!.marginOnly(left: gap),
                      ],
                    ),
          ),
        ),
      ),
    );
  }

  /// Creates a smaller version of the button.
  ///
  /// The [height] and [radius] parameters can be used to customize the size.
  Widget small({double height = 34, double radius = 4, double? fontSize}) {
    // Determine the active background color
    Color activeBackgroundColor =
        this.activeBackgroundColor ?? AppColors.primary;

    // Determine the disabled background color
    Color disabledBackgroundColor =
        this.disabledBackgroundColor ?? AppColors.gray.shade300;

    // Determine the active foreground color
    Color activeForegroundColor =
        this.activeForegroundColor ?? AppColors.primary;

    // Determine the disabled foreground color
    Color disabledForegroundColor =
        this.disabledForegroundColor ?? AppColors.primary;

    // Determine the active text style
    TextStyle activeTextStyle =
        this.activeTextStyle ??
        AppTextStyles.f12w400.copyWith(color: activeForegroundColor);

    // Determine the disabled text style
    TextStyle disabledTextStyle =
        this.disabledTextStyle ??
        AppTextStyles.f12w400.copyWith(color: disabledForegroundColor);

    if (fontSize != null) {
      disabledTextStyle = disabledTextStyle.copyWith(fontSize: fontSize);
      activeTextStyle = activeTextStyle.copyWith(fontSize: fontSize);
    }

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
              border: Border.all(
                color:
                    isDisabled
                        ? disabledBackgroundColor
                        : activeBackgroundColor,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            height: height,
            width: width,
            duration: 500.milliseconds,
            child:
                isLoading
                    ? MagicLoader(
                      size: height / 2,
                      color:
                          isDisabled
                              ? disabledForegroundColor
                              : activeForegroundColor,
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Add leading widget if available
                        if (leading != null) leading!.marginOnly(right: gap),

                        // Add label with translation and style based on disabled state
                        label.toText(
                          style: (isDisabled
                                  ? disabledTextStyle
                                  : activeTextStyle)
                              .copyWith(height: -.2),
                        ),

                        // Add trailing widget if available
                        if (trailing != null) trailing!.marginOnly(left: gap),
                      ],
                    ),
          ),
        ),
      ),
    );
  }
}

/// A customizable outlined button widget with an icon.
///
/// The [PrimaryOutlinedButtonIcon] can be used to create a button with an icon,
/// customizable colors, and styles. It supports both active and disabled states.
///
/// The [onTap] callback is triggered when the button is pressed.
class PrimaryOutlinedButtonIcon extends StatelessWidget {
  /// Creates a [PrimaryOutlinedButtonIcon].
  ///
  /// The [icon] parameter must not be null.
  const PrimaryOutlinedButtonIcon({
    super.key,
    this.activeBackgroundColor,
    this.disabledBackgroundColor,
    this.activeForegroundColor,
    this.disabledForegroundColor,
    required this.icon,
    this.isLoading = false,
    this.onTap,
    this.height = 34,
    this.width,
    this.radius = 4,
  });

  /// The icon to display in the button.
  final IconData icon;

  /// The background color when the button is active.
  final Color? activeBackgroundColor;

  /// The background color when the button is disabled.
  final Color? disabledBackgroundColor;

  /// The foreground color when the button is active.
  final Color? activeForegroundColor;

  /// The foreground color when the button is disabled.
  final Color? disabledForegroundColor;

  /// Whether the button is in a loading state.
  final bool isLoading;

  /// The callback to be called when the button is tapped.
  final VoidCallback? onTap;

  /// The height of the button.
  final double height;

  /// The width of the button.
  final double? width;

  /// The border radius of the button.
  final double radius;

  @override
  Widget build(BuildContext context) {
    // Determine the active background color
    Color activeBackgroundColor =
        this.activeBackgroundColor ?? AppColors.primary;

    // Determine the disabled background color
    Color disabledBackgroundColor =
        this.disabledBackgroundColor ?? AppColors.gray.shade300;

    // Determine the active foreground color
    Color activeForegroundColor =
        this.activeForegroundColor ?? AppColors.primary;

    // Determine the disabled foreground color
    Color disabledForegroundColor =
        this.disabledForegroundColor ?? AppColors.primary;

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
              border: Border.all(
                color:
                    isDisabled
                        ? disabledBackgroundColor
                        : activeBackgroundColor,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            height: height,
            width: width,
            duration: 500.milliseconds,
            child:
                isLoading
                    ? MagicLoader(
                      size: height / 2,
                      color:
                          isDisabled
                              ? disabledForegroundColor
                              : activeForegroundColor,
                    )
                    : Icon(
                      icon,
                      size: height - 8,
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

/// A customizable outlined button widget with an image.
///
/// The [OutlinedButtonImage] can be used to create a button with an image,
/// customizable colors, and styles. It supports both active and disabled states.
///
/// The [onTap] callback is triggered when the button is pressed.
class OutlinedButtonImage extends StatelessWidget {
  /// Creates an [OutlinedButtonImage].
  ///
  /// The [imagePath] parameter must not be null.
  const OutlinedButtonImage({
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

  /// The path to the image to display in the button.
  final String imagePath;

  /// The background color when the button is active.
  final Color? activeBackgroundColor;

  /// The background color when the button is disabled.
  final Color? disabledBackgroundColor;

  /// The foreground color when the button is active.
  final Color? activeForegroundColor;

  /// The foreground color when the button is disabled.
  final Color? disabledForegroundColor;

  /// Whether the button is in a loading state.
  final bool isLoading;

  /// The callback to be called when the button is tapped.
  final VoidCallback? onTap;

  /// The height of the button.
  final double buttonHeight;

  /// The width of the button.
  final double? width;

  /// The border radius of the button.
  final double radius;

  @override
  Widget build(BuildContext context) {
    // Determine the active background color
    Color activeBackgroundColor =
        this.activeBackgroundColor ?? AppColors.primary;

    // Determine the disabled background color
    Color disabledBackgroundColor =
        this.disabledBackgroundColor ?? AppColors.gray.shade300;
    // Determine the active foreground color
    Color activeForegroundColor =
        this.activeForegroundColor ?? AppColors.primary;

    // Determine the disabled foreground color
    Color disabledForegroundColor =
        this.disabledForegroundColor ?? AppColors.primary;

    // Check if the button is disabled
    final isDisabled = onTap == null;

    // Define the button press action
    void onPress() {
      HapticFeedback.lightImpact();
      onTap!();
    }

    return Ink(
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
            border: Border.all(
              color:
                  isDisabled ? disabledBackgroundColor : activeBackgroundColor,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
    );
  }
}
