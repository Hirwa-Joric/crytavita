import '../controller/account_and_setting_setting_three_controller.dart';
import '../models/accountandsettingsettingthree_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountandsettingsettingthreeItemWidget extends StatelessWidget {
  AccountandsettingsettingthreeItemWidget(
    this.accountandsettingsettingthreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountandsettingsettingthreeItemModel
      accountandsettingsettingthreeItemModelObj;

  var controller = Get.find<AccountAndSettingSettingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath:
                accountandsettingsettingthreeItemModelObj.indonesia!.value,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            bottom: 7.v,
          ),
          child: Obx(
            () => Text(
              accountandsettingsettingthreeItemModelObj.indonesia1!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Obx(
            () => CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              child: CustomImageView(
                imagePath:
                    accountandsettingsettingthreeItemModelObj.location!.value,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
