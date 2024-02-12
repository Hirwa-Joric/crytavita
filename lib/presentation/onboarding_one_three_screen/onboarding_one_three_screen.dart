import '../onboarding_one_three_screen/widgets/sixtysix_item_widget.dart';
import 'controller/onboarding_one_three_controller.dart';
import 'models/sixtysix_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneThreeScreen extends GetWidget<OnboardingOneThreeController> {
  const OnboardingOneThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTwentyFour(),
              SizedBox(height: 50.v),
              _buildSixtySix(),
              SizedBox(height: 48.v),
              Obx(
                () => SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.onboardingOneThreeModelObj.value
                        .sixtysixItemList.value.length,
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
              SizedBox(height: 80.v),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return SizedBox(
      height: 362.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage21,
            height: 362.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Opacity(
            opacity: 0.8,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 362.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.5, -0.04),
                    end: Alignment(0.5, 1.24),
                    colors: [
                      appTheme.blueGray9003f.withOpacity(0.64),
                      theme.colorScheme.onPrimaryContainer.withOpacity(0.64),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 133.v,
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
              .onboardingOneThreeModelObj.value.sixtysixItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            SixtysixItemModel model = controller
                .onboardingOneThreeModelObj.value.sixtysixItemList.value[index];
            return SixtysixItemWidget(
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
