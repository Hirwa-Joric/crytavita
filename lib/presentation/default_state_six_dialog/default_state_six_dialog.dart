import 'controller/default_state_six_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

class DefaultStateSixDialog extends StatelessWidget {
  DefaultStateSixDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DefaultStateSixController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder39,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 142.adaptSize,
            width: 142.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 47.h,
              vertical: 44.v,
            ),
            decoration: AppDecoration.gradientBlueToBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA70052x47,
              height: 52.v,
              width: 47.h,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 32.v),
          Text(
            "msg_congratulations".tr,
            style: CustomTextStyles.titleLargeBlue30001,
          ),
          SizedBox(height: 23.v),
          SizedBox(
            width: 261.h,
            child: Text(
              "msg_your_account_is".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray90001.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 25.v),
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
    );
  }
}
