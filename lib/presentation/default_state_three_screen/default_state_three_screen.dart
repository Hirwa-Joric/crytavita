import 'controller/default_state_three_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DefaultStateThreeScreen extends GetWidget<DefaultStateThreeController> {
  const DefaultStateThreeScreen({Key? key})
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
          padding: EdgeInsets.only(
            left: 82.h,
            top: 182.v,
            right: 82.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup5318,
                height: 153.v,
                width: 199.h,
              ),
              SizedBox(height: 66.v),
              CustomImageView(
                imagePath: ImageConstant.imgNotification,
                height: 13.v,
                width: 11.h,
                margin: EdgeInsets.only(left: 45.h),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_completionprocess".tr,
                  style: CustomTextStyles.titleMediumBlue300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
