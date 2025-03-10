import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magic_extensions/magic_extensions.dart';

import '../theme/app_colors.dart';

class MagicLoader extends StatelessWidget {  
  const MagicLoader({
    super.key,
    required this.size,
    required this.color,
    this.strokeWidth,
  });

  final double size;
  final Color color;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    // Determine the widget size and shape
    return size.square(
      child:
          defaultTargetPlatform == TargetPlatform.iOS
              ? CupertinoActivityIndicator(
                // Set color for iOS platform
                color: color,
              )
              : CircularProgressIndicator(
                // Set stroke width and color for other platforms
                strokeWidth: strokeWidth ?? 2,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
    );
  }

  // Static method to provide a default loader
  static Widget defaultLoader() =>
      const MagicLoader(size: 30, color: AppColors.primary);
}
