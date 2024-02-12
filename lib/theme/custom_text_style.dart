import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsMediumBluegray800 =>
      theme.textTheme.bodyLarge!.poppinsMedium.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
      );
  static get bodyMediumActorWhiteA700 =>
      theme.textTheme.bodyMedium!.actor.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray50013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray50013_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500.withOpacity(0.64),
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 13.fSize,
      );
  static get bodyMediumDeeppurpleA100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurpleA100,
        fontSize: 14.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray9000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray30001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsMediumWhiteA700 =>
      theme.textTheme.bodyMedium!.poppinsMedium.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray100 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray100,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray300 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray300,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray30014 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray300,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA70013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA70013_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallErrorContainer12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlue70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blue70001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray800,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray50012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsRed600 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.red600,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA70012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA70012_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.56),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA70012_2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray300 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeBlue70001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blue70001,
      );
  static get headlineLargePurple600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.purple600,
      );
  static get headlineLargePurpleA400 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.purpleA400,
      );
  static get headlineLargePurpleA400_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.purpleA400,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineLargeWhiteA700_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineLargeWhiteA700_2 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 25.fSize,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray500.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlue30001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue30001,
      );
  static get titleLargeBlueA10002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueA10002,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlue300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue300,
      );
  static get titleMediumBlue30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue30001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlueA10002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA10002,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleMediumBluegray800_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleMediumInterGray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumOnErrorContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlueA10002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA10002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlueA10002_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA10002,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallOnErrorContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoBlueA10001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueA10001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoWhiteA700 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppinsMedium {
    return copyWith(
      fontFamily: 'Poppins Medium',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }
}
