import 'controller/onboarding_one_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage22,
                height: 359.v,
                width: 375.h,
              ),
              SizedBox(height: 50.v),
              Padding(
                padding: EdgeInsets.only(left: 46.h),
                child: Text(
                  "msg_real_time_monitoring".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 297.h,
                  margin: EdgeInsets.symmetric(horizontal: 38.h),
                  child: Text(
                    "msg_vigilant_sentinels".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBluegray50013.copyWith(
                      height: 1.69,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 69.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: appTheme.blueA10002,
                      dotColor: appTheme.blueA10002.withOpacity(0.46),
                      activeDotScale: 2.0,
                      dotHeight: 4.v,
                      dotWidth: 4.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "lbl_skip".tr,
                  style: CustomTextStyles.titleSmallBlueA10002,
                ),
              ),
              SizedBox(height: 77.v),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 62,
      width: 62,
      backgroundColor: appTheme.blueA10002,
      child: CustomImageView(
        imagePath: ImageConstant.imgArrowRightWhiteA700,
        height: 31.0.v,
        width: 31.0.h,
      ),
    );
  }
}
