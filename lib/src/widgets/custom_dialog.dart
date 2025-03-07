import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class  CustomDialog extends StatelessWidget {
  const  CustomDialog({
    super.key,
    required this.child,
    this.height,
    this.width,
  });
  final Widget child;
  final double? height;
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
