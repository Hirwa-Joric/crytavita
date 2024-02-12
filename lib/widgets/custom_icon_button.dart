import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blue50,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillIndigoTL25 => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal300,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray500,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 2.h,
        ),
      );
}
