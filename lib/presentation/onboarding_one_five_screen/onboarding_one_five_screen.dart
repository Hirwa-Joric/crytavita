import '../onboarding_one_five_screen/widgets/seventynine_item_widget.dart';
import 'controller/onboarding_one_five_controller.dart';
import 'models/seventynine_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneFiveScreen extends GetWidget<OnboardingOneFiveController> {
  const OnboardingOneFiveScreen({Key? key})
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
                imagePath: ImageConstant.imgRectangle953,
                height: 357.v,
                width: 375.h,
              ),
              SizedBox(height: 52.v),
              _buildSeventyNine(),
              SizedBox(height: 48.v),
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.onboardingOneFiveModelObj.value
                          .seventynineItemList.value.length,
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
  Widget _buildSeventyNine() {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 35.h,
      ),
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
              .onboardingOneFiveModelObj.value.seventynineItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            SeventynineItemModel model = controller.onboardingOneFiveModelObj
                .value.seventynineItemList.value[index];
            return SeventynineItemWidget(
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
