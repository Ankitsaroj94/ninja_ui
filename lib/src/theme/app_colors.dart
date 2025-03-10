//NOTE - This file is used to define the colors used in the app
import 'package:flutter/material.dart';

// AppColors defines a set of MaterialColor constants used throughout the app for consistent theming.
// Each color is defined with a primary shade and additional shades for different UI elements.

/// AppColors provides a set of predefined color palettes for consistent theming across the app.
abstract class AppColors {
  /// Gray color palette used for neutral elements and backgrounds.
  static const MaterialColor gray = MaterialColor(0xff667085, {
    25: Color(0xffFCFCFD),
    50: Color(0xffF9FAFB),
    100: Color(0xffF2F4F7),
    200: Color(0xffE4E7EC),
    300: Color(0xffD0D5DD),
    400: Color(0xff98A2B3),
    500: Color(0xff667085),
    600: Color(0xff475467),
    700: Color(0xff344054),
    800: Color(0xff1D2939),
    900: Color(0xff101828),
  });

  /// Base black color used for text and icons.
  static const baseBlack = Color(0xFF000000);

  /// Black color used for dark backgrounds and text.
  static const black = Color(0xff101828);

  /// White color used for light backgrounds and text.
  static const white = Color(0xFFFFFFFF);

  /// Transparent color used for invisible elements.
  static const transparent = Color(0x00000000);

  /// Shadow color used for drop shadows and depth effects.
  static const shadow = Color(0x14000000);

  /// Rich black color used for deep backgrounds and overlays.
  static const richBlack = Color(0xCC06161C);

  /// Primary color palette used for main branding and primary actions.
  static const MaterialColor primary = MaterialColor(0xff2E90FA, {
    25: Color(0xffFCFAFF),
    50: Color(0xffEFF8FF),
    100: Color(0xffD1E9FF),
    200: Color(0xffB2DDFF),
    300: Color(0xff84CAFF),
    400: Color(0xff53B1FD),
    500: Color(0xff2E90FA),
    600: Color(0xff1570EF),
    700: Color(0xff175CD3),
    800: Color(0xff1849A9),
    900: Color(0xff194185),
  });

  /// Error color palette used for error messages and critical alerts.
  static const MaterialColor error = MaterialColor(0xffF04438, {
    25: Color(0xffFFFBFA),
    50: Color(0xffFEF3F2),
    100: Color(0xffFEE4E2),
    200: Color(0xffFECDCA),
    300: Color(0xffFDA29B),
    400: Color(0xffF97066),
    500: Color(0xffF04438),
    600: Color(0xffD92D20),
    700: Color(0xffB42318),
    800: Color(0xff912018),
    900: Color(0xff7A271A),
  });

  /// Warning color palette used for warnings and cautionary messages.
  static const MaterialColor warning = MaterialColor(0xffF79009, {
    25: Color(0xffFFFCF5),
    50: Color(0xffFFFAEB),
    100: Color(0xffFEF0C7),
    200: Color(0xffFEDF89),
    300: Color(0xffFEC84B),
    400: Color(0xffFDB022),
    500: Color(0xffF79009),
    600: Color(0xffDC6803),
    700: Color(0xffB54708),
    800: Color(0xff93370D),
    900: Color(0xff7A2E0E),
  });

  /// Success color palette used for success messages and confirmations.
  static const MaterialColor success = MaterialColor(0xff12B76A, {
    25: Color(0xffF6FEF9),
    50: Color(0xffECFDF3),
    100: Color(0xffD1FADF),
    200: Color(0xffA6F4C5),
    300: Color(0xff6CE9A6),
    400: Color(0xff32D583),
    500: Color(0xff12B76A),
    600: Color(0xff039855),
    700: Color(0xff027A48),
    800: Color(0xff05603A),
    900: Color(0xff054F31),
  });

  /// Blue Light color palette used for secondary actions and highlights.
  static const MaterialColor blueLight = MaterialColor(0xff0BA5EC, {
    25: Color(0xffF5FBFF),
    50: Color(0xffF0F9FF),
    100: Color(0xffE0F2FE),
    200: Color(0xffB9E6FE),
    300: Color(0xff7CD4FD),
    400: Color(0xff36BFFA),
    500: Color(0xff0BA5EC),
    600: Color(0xff0086C9),
    700: Color(0xff026AA2),
    800: Color(0xff065986),
    900: Color(0xff0B4A6F),
  });

  /// Indigo color palette used for tertiary actions and accents.
  static const MaterialColor indigo = MaterialColor(0xff6172F3, {
    25: Color(0xffF5F8FF),
    50: Color(0xffEEF4FF),
    100: Color(0xffE0EAFF),
    200: Color(0xffC7D7FE),
    300: Color(0xffA4BCFD),
    400: Color(0xff8098F9),
    500: Color(0xff6172F3),
    600: Color(0xff444CE7),
    700: Color(0xff3538CD),
    800: Color(0xff2D31A6),
    900: Color(0xff2D3282),
  });

  /// Purple color palette used for creative and playful elements.
  static const MaterialColor purple = MaterialColor(0xff7A5AF8, {
    25: Color(0xffFAFAFF),
    50: Color(0xffF4F3FF),
    100: Color(0xffEBE9FE),
    200: Color(0xffD9D6FE),
    300: Color(0xffBDB4FE),
    400: Color(0xff9B8AFB),
    500: Color(0xff7A5AF8),
    600: Color(0xff6938EF),
    700: Color(0xff5925DC),
    800: Color(0xff4A1FB8),
    900: Color(0xff3E1C96),
  });

  /// Pink color palette used for feminine and soft elements.
  static const MaterialColor pink = MaterialColor(0xffEE46BC, {
    25: Color(0xffFEF6FB),
    50: Color(0xffFDF2FA),
    100: Color(0xffFCE7F6),
    200: Color(0xffFCCEEE),
    300: Color(0xffFAA7E0),
    400: Color(0xffF670C7),
    500: Color(0xffEE46BC),
    600: Color(0xffDD2590),
    700: Color(0xffC11574),
    800: Color(0xff9E165F),
    900: Color(0xff851651),
  });

  /// Rose color palette used for romantic and warm elements.
  static const MaterialColor rose = MaterialColor(0xffF63D68, {
    25: Color(0xffFFF5F6),
    50: Color(0xffFFF1F3),
    100: Color(0xffFFE4E8),
    200: Color(0xffFECDD6),
    300: Color(0xffFEA3B4),
    400: Color(0xffFD6F8E),
    500: Color(0xffF63D68),
    600: Color(0xffE31B54),
    700: Color(0xffC01048),
    800: Color(0xffA11043),
    900: Color(0xff89123E),
  });

  /// Orange color palette used for energetic and vibrant elements.
  static const MaterialColor orange = MaterialColor(0xffFB6514, {
    25: Color(0xffFFFAF5),
    50: Color(0xffFFF6ED),
    100: Color(0xffFFEAD5),
    200: Color(0xffFDDCAB),
    300: Color(0xffFEB273),
    400: Color(0xffFD853A),
    500: Color(0xffFB6514),
    600: Color(0xffEC4A0A),
    700: Color(0xffC4320A),
    800: Color(0xff9C2A10),
    900: Color(0xff7E2410),
  });

  // Template To Add More Colors
  // static const MaterialColor blue_light = MaterialColor(
  //   0xff667085,
  //   {
  //     25: Color(0xff),
  //     50: Color(0xff),
  //     100: Color(0xff),
  //     200: Color(0xff),
  //     300: Color(0xff),
  //     400: Color(0xff),
  //     500: Color(0xff),
  //     600: Color(0xff),
  //     700: Color(0xff),
  //     800: Color(0xff),
  //     900: Color(0xff),
  //   },
  // );
}
