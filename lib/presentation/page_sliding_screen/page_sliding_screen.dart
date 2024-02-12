import 'controller/page_sliding_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';
import 'package:crytavita/widgets/app_bar/appbar_title_image.dart';
import 'package:crytavita/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PageSlidingScreen extends GetWidget<PageSlidingController> {
  const PageSlidingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 811.v,
          width: 378.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 59.v),
                      _buildAppBar(),
                      SizedBox(height: 18.v),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            height: 740.v,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 13.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 1.h),
                                    decoration: AppDecoration
                                        .gradientWhiteAToWhiteA
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildVector(),
                                        SizedBox(height: 25.v),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorBlueGray80011x116,
                                          height: 11.v,
                                          width: 116.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                        ),
                                        SizedBox(height: 17.v),
                                        _buildFifteen(),
                                        SizedBox(height: 25.v),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorBlueGray800,
                                          height: 11.v,
                                          width: 76.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                _buildSeventeen(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector808x375,
                height: 808.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 19.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 4.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVectorBlueGray80016x128,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(horizontal: 26.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVector() {
    return Container(
      width: 321.h,
      margin: EdgeInsets.only(right: 23.h),
      decoration: AppDecoration.gradientBlueToBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 22.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 21.v,
                    bottom: 26.v,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 13.v,
                              bottom: 6.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorWhiteA70010x132,
                                  height: 10.v,
                                  width: 132.h,
                                ),
                                SizedBox(height: 17.v),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorWhiteA70023x163,
                                  height: 23.v,
                                  width: 163.h,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector72x77,
                            height: 72.v,
                            width: 77.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation,
                                height: 12.v,
                                width: 9.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorWhiteA70014x140,
                                height: 14.v,
                                width: 140.h,
                                margin: EdgeInsets.only(left: 10.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFlag,
                            height: 19.v,
                            width: 45.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup,
                            height: 14.v,
                            width: 210.h,
                            margin: EdgeInsets.only(
                              left: 18.h,
                              top: 5.v,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroupWhiteA700,
                height: 203.v,
                width: 321.h,
                margin: EdgeInsets.only(left: 35.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen() {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 109.v,
            width: 344.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector109x344,
                  height: 109.v,
                  width: 344.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(20.h),
                  ),
                  alignment: Alignment.center,
                ),
                Opacity(
                  opacity: 0.3,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 109.v,
                      width: 344.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.h),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(-0.11, 0.7),
                          end: Alignment(0.43, -1.26),
                          colors: [
                            appTheme.indigo90075,
                            appTheme.indigo70075,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray80036x297,
            height: 36.v,
            width: 297.h,
          ),
          SizedBox(height: 25.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 31.h,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFilter,
                    height: 12.v,
                    width: 91.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 8.v,
                    width: 75.h,
                    margin: EdgeInsets.only(
                      left: 124.h,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 15.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup17,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray80013x55,
                  height: 13.v,
                  width: 55.h,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray80010x21,
                  height: 10.v,
                  width: 21.h,
                  margin: EdgeInsets.only(
                    left: 167.h,
                    top: 8.v,
                    bottom: 10.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector29x31,
                  height: 29.v,
                  width: 31.h,
                  margin: EdgeInsets.only(left: 22.h),
                ),
              ],
            ),
            SizedBox(height: 11.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 13.v,
                  width: 58.h,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInfo,
                  height: 9.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    left: 166.h,
                    top: 8.v,
                    bottom: 10.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector1,
                  height: 29.v,
                  width: 31.h,
                  margin: EdgeInsets.only(left: 23.h),
                ),
              ],
            ),
            SizedBox(height: 11.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFilterBlueGray800,
                  height: 13.v,
                  width: 82.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 6.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 10.v,
                  width: 21.h,
                  margin: EdgeInsets.only(
                    left: 141.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector2,
                  height: 29.v,
                  width: 31.h,
                  margin: EdgeInsets.only(left: 22.h),
                ),
              ],
            ),
            SizedBox(height: 26.v),
            CustomImageView(
              imagePath: ImageConstant.imgVector10x45,
              height: 10.v,
              width: 45.h,
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }
}
