//NOTE - This file is used to define the text styles used in the app

import 'package:flutter/material.dart';

import 'app_colors.dart';

/// AppTextStyles provides a set of predefined text styles for consistent typography across the app.
abstract class AppTextStyles {
  // Regular
  /// Regular 24pt text style with normal weight.
  static const f24w400 = TextStyle(
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 20pt text style with normal weight.
  static const f20w400 = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 18pt text style with normal weight.
  static const f18w400 = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 18pt text style with normal weight and blue color.
  static const f18w400blue = TextStyle(
    fontSize: 18,
    color: AppColors.blueLight,
    fontWeight: FontWeight.w400,
  );

  /// Regular 18pt text style with normal weight and gray shade 800.
  static final f18w400Gray800 = TextStyle(
    fontSize: 18,
    color: AppColors.gray.shade800,
    fontWeight: FontWeight.w400,
  );

  /// Medium 18pt text style with medium weight and gray shade 900.
  static final f18w500Gray900 = TextStyle(
    fontSize: 18,
    color: AppColors.gray.shade900,
    fontWeight: FontWeight.w500,
  );

  /// Regular 16pt text style with normal weight.
  static const f16w400 = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 16pt text style with normal weight and gray color.
  static const f16w400Gray = TextStyle(
    fontSize: 16,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  /// Regular 16pt text style with normal weight and gray shade 200.
  static final f16w400Gray200 = TextStyle(
    fontSize: 16,
    color: AppColors.gray.shade200,
    fontWeight: FontWeight.w400,
  );

  /// Regular 16pt text style with normal weight and primary color.
  static const f16w400Primary = TextStyle(
    fontSize: 16,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );

  /// Regular 16pt text style with normal weight and white color.
  static const f16w400White = TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight.
  static const f14w400 = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and success color.
  static const f14w400Success = TextStyle(
    fontSize: 14,
    color: AppColors.success,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and error color.
  static const f14w400Error = TextStyle(
    fontSize: 14,
    color: AppColors.error,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and warning color.
  static const f14w400Warning = TextStyle(
    fontSize: 14,
    color: AppColors.warning,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and white color.
  static const f14w400White = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and primary color.
  static const f14w400Primary = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and gray color.
  static const f14w400Gray = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and gray shade 700.
  static final f14w400Gray700 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade700,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and gray shade 800.
  static final f14w400Gray800 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade800,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and gray shade 400.
  static final f14w400Gray400 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade400,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with light weight and gray shade 200.
  static final f14w200Gray200 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade200,
    fontWeight: FontWeight.w200,
  );

  /// Regular 14pt text style with normal weight and gray shade 500.
  static final f14w400Gray500 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade500,
    fontWeight: FontWeight.w400,
  );

  /// Regular 14pt text style with normal weight and gray shade 900.
  static final f14w400Gray900 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade900,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight.
  static const f12w400 = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  /// Regular 16pt text style with normal weight and white color.
  static const f16w400white = TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and error color.
  static const f12w400Error = TextStyle(
    fontSize: 12,
    color: AppColors.error,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and primary color.
  static const f12w400Primary = TextStyle(
    fontSize: 12,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );

  /// Bold 12pt text style with blue color.
  static const f12w700blue = TextStyle(
    fontSize: 12,
    color: AppColors.blueLight,
    fontWeight: FontWeight.w700,
  );

  /// Regular 12pt text style with normal weight and gray color.
  static const f12w400Gray = TextStyle(
    fontSize: 12,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and blue color.
  static const f12w400Blue = TextStyle(
    fontSize: 12,
    color: AppColors.blueLight,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and gray shade 600.
  static final f12w400Gray600 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade600,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and white color.
  static const f12w400White = TextStyle(
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  /// Bold 12pt text style with white color.
  static const f12w700White = TextStyle(
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with warning color.
  static const f12w700Warning = TextStyle(
    fontSize: 12,
    color: AppColors.warning,
    fontWeight: FontWeight.w700,
  );

  // Medium
  /// Medium 24pt text style with medium weight.
  static const f24w500 = TextStyle(
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 20pt text style with medium weight.
  static const f20w500 = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 18pt text style with medium weight.
  static const f18w500 = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 18pt text style with medium weight and primary color.
  static const f18w500Primary = TextStyle(
    fontSize: 18,
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  /// Medium 16pt text style with medium weight and primary color.
  static const f16w500Primary = TextStyle(
    fontSize: 16,
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  /// Medium 16pt text style with medium weight.
  static const f16w500 = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 16pt text style with medium weight and error color.
  static const f16w500error = TextStyle(
    fontSize: 16,
    color: AppColors.error,
    fontWeight: FontWeight.w500,
  );

  /// Bold 16pt text style with black color.
  static const f16w700Bold = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Medium 16pt text style with medium weight and gray color.
  static const f16w500Gray = TextStyle(
    fontSize: 16,
    color: AppColors.gray,
    fontWeight: FontWeight.w500,
  );

  /// Bold 16pt text style with gray shade 700.
  static final f16w700Gray700 = TextStyle(
    fontSize: 16,
    color: AppColors.gray.shade700,
    fontWeight: FontWeight.w700,
  );

  /// Medium 16pt text style with medium weight and white color.
  static const f16w500White = TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  /// Medium 16pt text style with medium weight and gray shade 700.
  static final f16w500Gray700 = TextStyle(
    fontSize: 16,
    color: AppColors.gray.shade700,
    fontWeight: FontWeight.w500,
  );

  /// Medium 16pt text style with medium weight and gray shade 900.
  static final f16w500Gray900 = TextStyle(
    fontSize: 16,
    color: AppColors.gray.shade900,
    fontWeight: FontWeight.w500,
  );

  /// Medium 12pt text style with medium weight and gray shade 900.
  static final f12w500Gray900 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade900,
    fontWeight: FontWeight.w500,
  );

  /// Medium 14pt text style with medium weight.
  static const f14w500 = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 14pt text style with medium weight and gray color.
  static const f14w500Gray = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
    fontWeight: FontWeight.w500,
  );

  /// Medium 14pt text style with medium weight and gray shade 700.
  static const f14w500Gray700 = TextStyle(
    fontSize: 14,
    color: Color(0xff344054),
    fontWeight: FontWeight.w500,
  );

  /// Bold 14pt text style with gray shade 700.
  static final f14w500Gray900 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade700,
    fontWeight: FontWeight.w700,
  );

  /// Medium 14pt text style with medium weight and primary color.
  static const f14w500Primary = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  /// Regular 14pt text style with normal weight and warning shade 500.
  static final f14w400Warning500 = TextStyle(
    fontSize: 14,
    color: AppColors.warning.shade500,
    fontWeight: FontWeight.w400,
  );

  /// Medium 14pt text style with medium weight and white color.
  static const f14w500White = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  /// Bold 8pt text style with gray color.
  static const f8w700gray = TextStyle(
    fontSize: 8,
    color: AppColors.gray,
    fontWeight: FontWeight.w700,
  );

  /// Regular 8pt text style with normal weight and gray color.
  static const f8w400gray = TextStyle(
    fontSize: 8,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  /// Medium 12pt text style with medium weight.
  static const f12w500 = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  /// Medium 12pt text style with medium weight and error color.
  static const f12w500error = TextStyle(
    fontSize: 12,
    color: AppColors.error,
    fontWeight: FontWeight.w500,
  );

  /// Medium 12pt text style with medium weight and success color.
  static const f12w500success = TextStyle(
    fontSize: 12,
    color: AppColors.success,
    fontWeight: FontWeight.w500,
  );

  /// Medium 12pt text style with medium weight and gray color.
  static const f12w500Gray = TextStyle(
    fontSize: 12,
    color: AppColors.gray,
    fontWeight: FontWeight.w500,
  );

  /// Medium 12pt text style with medium weight and gray shade 400.
  static final f12w500Gray400 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade400,
    fontWeight: FontWeight.w500,
  );

  /// Semi-bold 10pt text style with white color.
  static const f10w600White = TextStyle(
    fontSize: 10,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  /// Regular 10pt text style with normal weight and success shade 600.
  static TextStyle f10w400Success600 = TextStyle(
    fontSize: 10,
    color: AppColors.success.shade600,
    fontWeight: FontWeight.w400,
  );

  /// Regular 10pt text style with normal weight and gray color.
  static TextStyle f10w400gray = TextStyle(
    fontSize: 10,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );

  /// Semi-bold 10pt text style with gray color.
  static const f10w600Gray = TextStyle(
    fontSize: 10,
    color: AppColors.gray,
    fontWeight: FontWeight.w600,
  );

  /// Extra-bold 10pt text style with gray shade 900.
  static final f10w800Gray900 = TextStyle(
    fontSize: 10,
    color: AppColors.gray.shade900,
    fontWeight: FontWeight.w800,
  );

  /// Bold 12pt text style with gray color.
  static const f12w700Gray = TextStyle(
    fontSize: 12,
    color: AppColors.gray,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with gray shade 700.
  static final f12w700Gray700 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade700,
    fontWeight: FontWeight.w700,
  );

  /// Regular 12pt text style with normal weight and gray shade 400.
  static final f12w400Gray400 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade400,
    fontWeight: FontWeight.w400,
  );

  /// Regular 12pt text style with normal weight and gray shade 500.
  static final f12w400Gray500 = TextStyle(
    fontSize: 12,
    color: AppColors.gray.shade400,
    fontWeight: FontWeight.w500,
  );

  /// Regular 12pt text style with normal weight and error shade 500.
  static final f12w400Error500 = TextStyle(
    fontSize: 12,
    color: AppColors.error,
    fontWeight: FontWeight.w500,
  );
  // Bold
  /// Bold 40pt text style with primary color.
  static const f40w700Primary = TextStyle(
    fontSize: 40,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  /// Bold 24pt text style with black color.
  static const f24w700 = TextStyle(
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 26pt text style with black color.
  static const f36w700 = TextStyle(
    fontSize: 26,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 24pt text style with primary color.
  static const f24w700Primary = TextStyle(
    fontSize: 24,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  /// Bold 20pt text style with black color.
  static const f20w700 = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 18pt text style with black color.
  static const f18w700 = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 18pt text style with primary color.
  static const f18w700Primary = TextStyle(
    fontSize: 18,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  /// Bold 16pt text style with black color.
  static const f16w700 = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 16pt text style with gray color.
  static const f16w700Gray = TextStyle(
    fontSize: 16,
    color: AppColors.gray,
    fontWeight: FontWeight.w700,
  );

  /// Bold 16pt text style with base black color.
  static const f16w700BaseBlack = TextStyle(
    fontSize: 16,
    color: AppColors.baseBlack,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with black color.
  static const f14w700 = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with white color.
  static const f14w700White = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with gray color.
  static const f14w700Gray = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with gray shade 400.
  static final f14w700Gray400 = TextStyle(
    fontSize: 14,
    color: AppColors.gray.shade400,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with primary color.
  static const f14w700Primary = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  /// Bold 14pt text style with blue color.
  static const f14w700Blue = TextStyle(
    fontSize: 14,
    color: AppColors.blueLight,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with black color.
  static const f12w700 = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with primary color.
  static const f12w700Primary = TextStyle(
    fontSize: 12,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with error color.
  static const f12w700Error = TextStyle(
    fontSize: 12,
    color: AppColors.error,
    fontWeight: FontWeight.w700,
  );

  /// Bold 12pt text style with success color.
  static const f12w700success = TextStyle(
    fontSize: 12,
    color: AppColors.success,
    fontWeight: FontWeight.w700,
  );
  // Extra Bold
  /// Extra-bold 24pt text style with black color.
  static const f24w900 = TextStyle(
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );

  /// Extra-bold 20pt text style with black color.
  static const f20w900 = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );

  /// Extra-bold 18pt text style with black color.
  static const f18w900 = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );

  /// Extra-bold 16pt text style with black color.
  static const f16w900 = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );

  /// Extra-bold 14pt text style with black color.
  static const f14w900 = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );

  /// Extra-bold 12pt text style with black color.
  static const f12w900 = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w900,
  );
}
