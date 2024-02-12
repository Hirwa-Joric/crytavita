import 'controller/home_five_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';
import 'package:crytavita/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:crytavita/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class HomeFiveScreen extends GetWidget<HomeFiveController> {
  const HomeFiveScreen({Key? key})
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
        appBar: _buildAppBar(),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          padding: EdgeInsets.only(top: 42.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.91, 0.05),
              end: Alignment(-0.73, 1.68),
              colors: [
                appTheme.whiteA700.withOpacity(0.2),
                appTheme.whiteA700.withOpacity(0.2),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 6.v,
            ),
            child: Column(
              children: [
                _buildForecast(),
                SizedBox(height: 26.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_forecast".tr,
                        style:
                            CustomTextStyles.bodyLargePoppinsMediumBluegray800,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildForecast2(),
                  ],
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 42.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenuBlueGray800,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_weather".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchBlueGray800,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildForecast() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_partly_cloudly".tr,
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_october_13th_2023".tr,
                    style: CustomTextStyles.titleMediumBluegray800,
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgJamMenu,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 13.v,
                  bottom: 15.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_2_pm".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppinsGray50012,
                ),
                Text(
                  "lbl_3_pm".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppinsGray50012,
                ),
                Text(
                  "lbl_4_pm".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppinsGray50012,
                ),
                Text(
                  "lbl_5_pm".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppinsGray50012,
                ),
                Text(
                  "lbl_6_pm".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppinsGray50012,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage16,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(right: 17.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage17,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.symmetric(horizontal: 17.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage19,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.symmetric(horizontal: 17.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage18,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.symmetric(horizontal: 17.h),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage20,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_72_f".tr,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_70_f".tr,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_69_f".tr,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_75_f".tr,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_76_f".tr,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForecast2() {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 2.h,
        top: 2.v,
        right: 2.h,
        bottom: 2.v,
      ),
      strokeWidth: 2.h,
      gradient: LinearGradient(
        begin: Alignment(0.99, 0.02),
        end: Alignment(1.5, 1.15),
        colors: [
          appTheme.whiteA700,
          appTheme.whiteA700.withOpacity(0),
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.gradientWhiteAToWhiteA7002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_partly_cloudly".tr,
                      style: CustomTextStyles.bodyMediumGray500,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg_august_10th_2020".tr,
                      style: CustomTextStyles.titleMediumBluegray800,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgJamMenu,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    bottom: 16.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 21.v),
            _buildWednesday(
              imageThirteen: ImageConstant.imgImage16,
              wednesday: "lbl_monday".tr,
              sevenThousandThreeHundredTwent: "lbl_72_28".tr,
            ),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage17,
                  height: 30.v,
                  width: 31.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_tuesday".tr,
                    style: CustomTextStyles.bodyMediumBluegray800,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_73_27".tr,
                    style: CustomTextStyles.bodyMediumBluegray800,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            _buildWednesday(
              imageThirteen: ImageConstant.imgImage18,
              wednesday: "lbl_wednesday".tr,
              sevenThousandThreeHundredTwent: "lbl_73_26".tr,
            ),
            SizedBox(height: 16.v),
            _buildWednesday(
              imageThirteen: ImageConstant.imgImage19,
              wednesday: "lbl_thursday".tr,
              sevenThousandThreeHundredTwent: "lbl_73_22".tr,
            ),
            SizedBox(height: 16.v),
            _buildWednesday(
              imageThirteen: ImageConstant.imgImage20,
              wednesday: "lbl_friday".tr,
              sevenThousandThreeHundredTwent: "lbl_73_25".tr,
            ),
            SizedBox(height: 16.v),
            _buildWednesday(
              imageThirteen: ImageConstant.imgImage20,
              wednesday: "lbl_saturday".tr,
              sevenThousandThreeHundredTwent: "lbl_68_22".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildWednesday({
    required String imageThirteen,
    required String wednesday,
    required String sevenThousandThreeHundredTwent,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: imageThirteen,
          height: 30.v,
          width: 31.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 6.v,
            bottom: 2.v,
          ),
          child: Text(
            wednesday,
            style: CustomTextStyles.bodyMediumBluegray800.copyWith(
              color: appTheme.blueGray800,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Text(
            sevenThousandThreeHundredTwent,
            style: CustomTextStyles.bodyMediumBluegray800.copyWith(
              color: appTheme.blueGray800,
            ),
          ),
        ),
      ],
    );
  }
}
