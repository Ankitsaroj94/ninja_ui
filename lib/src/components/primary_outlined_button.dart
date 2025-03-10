import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/utils.dart';
import 'package:magic_extensions/magic_extensions.dart';
import 'package:magic_ui_color/magic_ui_color.dart';

class PrimaryOutlinedButton extends StatelessWidget {
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

  final Color? activeBackgroundColor;
  final Color? disabledBackgroundColor;
  final Color? activeForegroundColor;
  final Color? disabledForegroundColor;
  final TextStyle? activeTextStyle;
  final TextStyle? disabledTextStyle;
  final Widget? leading;
  final Widget? trailing;
  final double gap;
  final bool isLoading;
  final VoidCallback? onTap;
  final double height;
  final double? width;
  final double radius;
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

  // Method to create a smaller version of the button
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

class PrimaryOutlinedButtonIcon extends StatelessWidget {
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

  final Color? activeBackgroundColor;
  final Color? disabledBackgroundColor;
  final Color? activeForegroundColor;
  final Color? disabledForegroundColor;
  final IconData icon;
  final bool isLoading;
  final VoidCallback? onTap;
  final double height;
  final double? width;
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

class OutlinedButtonImage extends StatelessWidget {
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
