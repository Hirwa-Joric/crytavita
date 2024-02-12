import 'controller/login_as_three_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginAsThreeScreen extends GetWidget<LoginAsThreeController> {
  const LoginAsThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 54.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(
                flex: 51,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrame1171275125WhiteA700,
                height: 96.adaptSize,
                width: 96.adaptSize,
              ),
              SizedBox(height: 28.v),
              Text(
                "lbl_crytavita".tr,
                style: CustomTextStyles.headlineLargePurpleA400_1,
              ),
              Spacer(
                flex: 48,
              ),
              SizedBox(
                height: 56.adaptSize,
                width: 56.adaptSize,
                child: CircularProgressIndicator(
                  value: 0.5,
                  strokeWidth: 6.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
