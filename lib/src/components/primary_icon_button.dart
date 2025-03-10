import 'package:flutter/material.dart';
import 'package:ninja_ui/ninja_ui.dart';

/// A customizable icon button widget with active and disabled states.
///
/// The [PrimaryIconButton] can be used to create a button with an icon that
/// changes appearance based on its active or disabled state.
///
/// The button's appearance can be customized using the provided properties.
///
/// Example:
/// ```dart
/// PrimaryIconButton(
///   icon: Icons.add,
///   onTap: () {
///     // Handle tap
///   },
/// )
/// ```
class PrimaryIconButton extends StatelessWidget {
  /// Creates a [PrimaryIconButton].
  ///
  /// The [icon] parameter must not be null.
  const PrimaryIconButton({
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

  /// The background color when the button is active.
  final Color? activeBackgroundColor;

  /// The background color when the button is disabled.
  final Color? disabledBackgroundColor;

  /// The foreground color (icon color) when the button is active.
  final Color? activeForegroundColor;

  /// The foreground color (icon color) when the button is disabled.
  final Color? disabledForegroundColor;

  /// The icon to display inside the button.
  final IconData icon;

  /// Whether the button is in a loading state.
  final bool isLoading;

  /// The callback that is called when the button is tapped.
  ///
  /// If this is null, the button will be disabled.
  final VoidCallback? onTap;

  /// The height of the button.
  final double height;

  /// The width of the button.
  final double? width;

  /// The border radius of the button.
  final double radius;

  @override
  Widget build(BuildContext context) {
    final isDisabled = onTap == null;
    return Ink(
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Material(
        color: AppColors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: isDisabled ? null : onTap,
          child: Icon(
            icon,
            size: height - 8,
            color: isDisabled ? disabledForegroundColor : activeForegroundColor,
          ),
        ),
      ),
    );
  }
}
