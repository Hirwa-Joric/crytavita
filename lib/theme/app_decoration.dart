import 'package:flutter/material.dart';
import 'package:crytavita/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue30001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.9),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlue30001ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(-0.24, -0.31),
          colors: [
            appTheme.blue30001,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientBlueAToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.81, 0.53),
          end: Alignment(-0.83, 1.24),
          colors: [
            appTheme.blueA10019,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(-0.24, -0.31),
          colors: [
            appTheme.blue30001,
            appTheme.blue70001,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blue70001,
            appTheme.blue70001,
            appTheme.blueA10003,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToBlueA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blue70001,
            appTheme.blue70001,
            appTheme.blueA100,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToPrimary => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 3.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(-0.24, -0.31),
          colors: [
            appTheme.blue30001,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.99, 0.02),
          end: Alignment(-0.94, 1.82),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.91, 0.05),
          end: Alignment(-0.73, 1.68),
          colors: [
            appTheme.whiteA700.withOpacity(0.2),
            appTheme.whiteA700.withOpacity(0.2),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA7001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.91, 0.05),
          end: Alignment(-0.73, 1.68),
          colors: [
            appTheme.whiteA700.withOpacity(0.2),
            appTheme.whiteA700.withOpacity(0.2),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA7002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.99, 0.02),
          end: Alignment(-0.94, 1.82),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA7003 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.91, 0.05),
          end: Alignment(-0.73, 1.68),
          colors: [
            appTheme.whiteA700.withOpacity(0.1),
            appTheme.whiteA700.withOpacity(0.1),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray100.withOpacity(0.4),
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration();
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: appTheme.gray10002,
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.indigo50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo100 => BoxDecoration(
        color: appTheme.gray10002,
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.gray10002,
        border: Border.all(
          color: appTheme.red600,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder39 => BorderRadius.circular(
        39.h,
      );
  static BorderRadius get circleBorder71 => BorderRadius.circular(
        71.h,
      );
  static BorderRadius get circleBorder9 => BorderRadius.circular(
        9.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    