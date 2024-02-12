import 'controller/account_and_setting_profil_updated_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AccountAndSettingProfilUpdatedDialog extends StatelessWidget {
  AccountAndSettingProfilUpdatedDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountAndSettingProfilUpdatedController controller;

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
            imagePath: ImageConstant.imgGroup5305BlueA10002,
            height: 117.v,
            width: 147.h,
          ),
          SizedBox(height: 40.v),
          Text(
            "lbl_update_success".tr,
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
