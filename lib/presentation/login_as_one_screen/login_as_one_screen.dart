import 'controller/login_as_one_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginAsOneScreen extends GetWidget<LoginAsOneController> {
  const LoginAsOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
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
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1171275124,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                ),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_crytavita".tr,
                    style: CustomTextStyles.headlineLargePurple600,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
