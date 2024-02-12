import 'controller/successfull_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SuccessfullDialog extends StatelessWidget {
  SuccessfullDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SuccessfullController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup5305,
            height: 117.v,
            width: 147.h,
          ),
          SizedBox(height: 38.v),
          SizedBox(
            width: 169.h,
            child: Text(
              "msg_account_verified".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Opacity(
            opacity: 0.8,
            child: Text(
              "msg_now_you_can_login".tr,
              style: CustomTextStyles.bodyMediumBluegray50013_1,
            ),
          ),
          SizedBox(height: 19.v),
          CustomOutlinedButton(
            text: "lbl_accept".tr,
          ),
        ],
      ),
    );
  }
}
