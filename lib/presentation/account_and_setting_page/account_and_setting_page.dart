import 'controller/account_and_setting_controller.dart';
import 'models/account_and_setting_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AccountAndSettingPage extends StatelessWidget {
  AccountAndSettingPage({Key? key})
      : super(
          key: key,
        );

  AccountAndSettingController controller =
      Get.put(AccountAndSettingController(AccountAndSettingModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 17.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFloatingIcon,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_cryptavita".tr,
                        style: CustomTextStyles.titleSmallBlueA10002,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                Divider(
                  color: appTheme.gray100,
                ),
                SizedBox(height: 14.v),
                _buildProfil(),
                SizedBox(height: 20.v),
                Divider(
                  color: appTheme.gray100,
                ),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: _buildAccount(
                    account: "lbl_profile".tr,
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: _buildAccount(
                    account: "lbl_account".tr,
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: _buildAccount(
                    account: "lbl_setting".tr,
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: _buildAccount(
                    account: "lbl_about".tr,
                  ),
                ),
                SizedBox(height: 40.v),
                _buildBanner(),
                SizedBox(height: 64.v),
                _buildTerms(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfil() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 194.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWithOutlineRegular,
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  radius: BorderRadius.circular(
                    29.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_welcome".tr,
                        style: CustomTextStyles.bodyMediumBluegray500,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_cinta_castella".tr,
                        style: CustomTextStyles.titleMediumOnErrorContainer17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgFiRrSignOut,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder9,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 9.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup13,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 58.v,
                    width: 61.h,
                    margin: EdgeInsets.only(top: 1.v),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 58.adaptSize,
                                  width: 58.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 58.adaptSize,
                                          width: 58.adaptSize,
                                          child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: appTheme.whiteA700
                                                .withOpacity(0.49),
                                            color: appTheme.whiteA700,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFiRrHeadset,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.only(top: 6.v),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(bottom: 55.v),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 18.v,
                      bottom: 14.v,
                    ),
                    child: Text(
                      "msg_how_can_we_help".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.v),
            Container(
              height: 3.adaptSize,
              width: 3.adaptSize,
              margin: EdgeInsets.only(left: 56.h),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTerms() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_privacy_policy".tr,
              style: CustomTextStyles.bodyMediumBluegray50013,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_terms".tr,
              style: CustomTextStyles.bodyMediumBluegray50013,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 1.v,
            ),
            child: Text(
              "lbl_english".tr,
              style: CustomTextStyles.bodyMediumBluegray50013,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAccount({required String account}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 40.v,
          width: 38.h,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFiRrShieldCheck,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 9.v,
            bottom: 7.v,
          ),
          child: Text(
            account,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}
