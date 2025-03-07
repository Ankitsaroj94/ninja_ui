import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class PrimaryIconButton extends StatelessWidget {
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
