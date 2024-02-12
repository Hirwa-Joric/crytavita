import 'controller/home_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';
import 'package:crytavita/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:crytavita/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
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
          padding: EdgeInsets.only(top: 41.v),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildChanceOfRainSixty3(),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_news".tr,
                    style: CustomTextStyles.bodyLargePoppinsMediumBluegray800,
                  ),
                  SizedBox(height: 14.v),
                  _buildCardNews(),
                  SizedBox(height: 22.v),
                  Text(
                    "lbl_forecast".tr,
                    style: CustomTextStyles.bodyLargePoppinsMediumBluegray800,
                  ),
                  SizedBox(height: 14.v),
                  _buildCardForecast(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 41.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenuBlueGray800,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_nyabihu_rwanda".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchBlueGray800,
          margin: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChanceOfRainSixty3() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 3.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.gradientBlueToBlueA100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    _buildChanceOfRainSixty(
                      chanceOfRainSixty: "msg_chance_of_rain_60".tr,
                      partlyCloudy: "lbl_partly_cloudy".tr,
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcRoundLocationOn,
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "lbl_nyabihu_rwanda2".tr,
                              style: CustomTextStyles.bodyMediumActorWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 46.h,
                          decoration: AppDecoration.outlineBlueGrayF,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_72".tr,
                                style:
                                    CustomTextStyles.headlineSmallWhiteA700Bold,
                              ),
                              Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 22.v,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.whiteA700,
                                    width: 1.h,
                                    strokeAlign: strokeAlignOutside,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 15.v,
                                ),
                                child: Text(
                                  "lbl_f".tr,
                                  style: CustomTextStyles
                                      .bodySmallPoppinsWhiteA70012_2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 11.v,
                            bottom: 6.v,
                          ),
                          child: _buildFrameFourteen(
                            ten: "lbl_10".tr,
                            five: "lbl_0_5".tr,
                            mphCounter: "lbl_124_mp_h".tr,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 3.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 20.v,
                ),
                decoration: AppDecoration.gradientBlueToBlueA100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildChanceOfRainSixty(
                      chanceOfRainSixty: "msg_chance_of_rain_60".tr,
                      partlyCloudy: "lbl_partly_cloudy".tr,
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcRoundLocationOn,
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "msg_washington_dc_usa".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsMediumWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 33.v,
                          width: 46.h,
                          decoration: AppDecoration.outlineBlueGrayF,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 33.v,
                                  width: 44.h,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_72".tr,
                                          style: CustomTextStyles
                                              .headlineSmallWhiteA700Bold,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 4.adaptSize,
                                          width: 4.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 7.v,
                                            right: 6.h,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            border: Border.all(
                                              color: appTheme.whiteA700,
                                              width: 1.h,
                                              strokeAlign: strokeAlignOutside,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text(
                                    "lbl_f".tr,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsWhiteA70012_2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 10.v,
                            bottom: 5.v,
                          ),
                          child: _buildFrameFourteen(
                            ten: "lbl_10".tr,
                            five: "lbl_0_5".tr,
                            mphCounter: "lbl_124_mp_h".tr,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNews() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle683,
            height: 110.v,
            width: 343.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(20.h),
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 225.h,
              margin: EdgeInsets.only(left: 24.h),
              child: Text(
                "msg_here_s_what_to_expect".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBluegray800,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_14_minutes_ago".tr,
                    style: CustomTextStyles.bodySmallPoppinsGray500,
                  ),
                ),
                Text(
                  "lbl_nr_channel".tr,
                  style: CustomTextStyles.bodySmallPoppinsBluegray800,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardForecast() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
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
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_72_f".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_70_f".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_69_f".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_75_f".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
              Text(
                "lbl_76_f".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray800,
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChanceOfRainSixty({
    required String chanceOfRainSixty,
    required String partlyCloudy,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 18.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chanceOfRainSixty,
                style:
                    CustomTextStyles.bodyMediumPoppinsMediumWhiteA700.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              Container(
                decoration: AppDecoration.outlineBlueGrayF,
                child: Text(
                  partlyCloudy,
                  style: CustomTextStyles.headlineSmallWhiteA700Bold.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage4,
          height: 73.v,
          width: 77.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameFourteen({
    required String ten,
    required String five,
    required String mphCounter,
  }) {
    return Expanded(
      child: Container(
        decoration: AppDecoration.outlineBlueGrayF,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMdiWeatherHail,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                bottom: 2.v,
              ),
              child: Text(
                ten,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSearchWhiteA700,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(left: 24.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                bottom: 1.v,
              ),
              child: Text(
                five,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMdiWeatherWindy,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 2.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                bottom: 1.v,
              ),
              child: Text(
                mphCounter,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
