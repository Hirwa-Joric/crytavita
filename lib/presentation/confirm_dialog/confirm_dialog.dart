import 'controller/confirm_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  ConfirmDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ConfirmController controller;

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
          Container(
            width: 232.h,
            margin: EdgeInsets.only(
              left: 34.h,
              right: 35.h,
            ),
            child: Text(
              "msg_account_information".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Opacity(
            opacity: 0.8,
            child: Container(
              width: 286.h,
              margin: EdgeInsets.only(
                left: 7.h,
                right: 8.h,
              ),
              child: Text(
                "msg_if_you_accept_account".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray50013_1.copyWith(
                  height: 1.69,
                ),
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomOutlinedButton(
            text: "lbl_accept".tr,
          ),
        ],
      ),
    );
  }
}
