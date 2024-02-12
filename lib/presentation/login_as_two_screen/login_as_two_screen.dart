import 'controller/login_as_two_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_elevated_button.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginAsTwoScreen extends GetWidget<LoginAsTwoController> {
  const LoginAsTwoScreen({Key? key})
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
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: appTheme.whiteA700,
              width: 3.h,
            ),
            gradient: LinearGradient(
              begin: Alignment(1, 1),
              end: Alignment(-0.24, -0.31),
              colors: [
                appTheme.blue30001,
                theme.colorScheme.primary,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 71.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 84.v),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1171275124,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                ),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 62.h),
                    child: Text(
                      "lbl_crytavita".tr,
                      style: CustomTextStyles.headlineLargeBlue70001,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 305.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_by_tapping_sign2".tr,
                          style: CustomTextStyles.bodyMediumWhiteA70013_1,
                        ),
                        TextSpan(
                          text: "lbl_terms".tr,
                          style: CustomTextStyles.labelLarge13.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "msg_learn_how_we_process".tr,
                          style:
                              CustomTextStyles.bodyMediumWhiteA70013_1.copyWith(
                            height: 1.77,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: CustomTextStyles.labelLarge13.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_and".tr,
                          style: CustomTextStyles.bodyMediumWhiteA70013_1,
                        ),
                        TextSpan(
                          text: "lbl_cookies_policy".tr,
                          style: CustomTextStyles.labelLarge13.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "lbl".tr,
                          style: CustomTextStyles.bodyMediumWhiteA70013_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 49.v),
                CustomElevatedButton(
                  height: 39.v,
                  text: "lbl_create_account".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                SizedBox(height: 16.v),
                CustomOutlinedButton(
                  height: 36.v,
                  text: "lbl_sign_in".tr,
                  buttonStyle: CustomButtonStyles.outlineWhiteA,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1,
                ),
                SizedBox(height: 38.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_need".tr,
                        style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                      ),
                      TextSpan(
                        text: "lbl_help".tr,
                        style: CustomTextStyles.bodySmallPoppinsBlue70001,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
