import 'controller/account_and_setting_account_update_password_success_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AccountAndSettingAccountUpdatePasswordSuccessDialog
    extends StatelessWidget {
  AccountAndSettingAccountUpdatePasswordSuccessDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountAndSettingAccountUpdatePasswordSuccessController controller;

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
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup5305BlueA10002147x159,
            height: 147.v,
            width: 159.h,
          ),
          SizedBox(height: 25.v),
          Text(
            "msg_password_updated".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 12.v),
          Opacity(
            opacity: 0.8,
            child: Container(
              width: 269.h,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
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
            text: "lbl_close".tr,
            buttonStyle: CustomButtonStyles.outlineBlueATL102,
            buttonTextStyle: CustomTextStyles.titleMediumBlueA10002,
          ),
        ],
      ),
    );
  }
}
