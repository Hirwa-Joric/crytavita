import '../onboarding_one_four_screen/widgets/sixtynine_item_widget.dart';
import 'controller/onboarding_one_four_controller.dart';
import 'models/sixtynine_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneFourScreen extends GetWidget<OnboardingOneFourController> {
  const OnboardingOneFourScreen({Key? key})
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
              CustomImageView(
                imagePath: ImageConstant.imgImage24,
                height: 361.v,
                width: 375.h,
              ),
              SizedBox(height: 49.v),
              _buildSixtyNine(),
              SizedBox(height: 48.v),
              Obx(
                () => SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.onboardingOneFourModelObj.value
                        .sixtynineItemList.value.length,
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
  Widget _buildSixtyNine() {
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
              .onboardingOneFourModelObj.value.sixtynineItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            SixtynineItemModel model = controller
                .onboardingOneFourModelObj.value.sixtynineItemList.value[index];
            return SixtynineItemWidget(
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
