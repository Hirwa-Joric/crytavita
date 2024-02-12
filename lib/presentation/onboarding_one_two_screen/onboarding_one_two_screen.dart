import '../onboarding_one_two_screen/widgets/fiftytwo_item_widget.dart';
import 'controller/onboarding_one_two_controller.dart';
import 'models/fiftytwo_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneTwoScreen extends GetWidget<OnboardingOneTwoController> {
  const OnboardingOneTwoScreen({Key? key})
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
            children: [
              _buildHeader(),
              SizedBox(height: 50.v),
              _buildFiftyTwo(),
              SizedBox(height: 48.v),
              Obx(
                () => SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.onboardingOneTwoModelObj.value
                        .fiftytwoItemList.value.length,
                    axisDirection: Axis.horizontal,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "lbl_skip".tr,
                    style: CustomTextStyles.titleSmallBlueA10002,
                  ),
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
  Widget _buildHeader() {
    return SizedBox(
      height: 357.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle953,
            height: 357.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage25,
            height: 357.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 135.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount: controller
              .onboardingOneTwoModelObj.value.fiftytwoItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            FiftytwoItemModel model = controller
                .onboardingOneTwoModelObj.value.fiftytwoItemList.value[index];
            return FiftytwoItemWidget(
              model,
            );
          },
        ),
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
