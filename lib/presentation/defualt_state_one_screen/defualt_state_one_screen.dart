import 'controller/defualt_state_one_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/core/utils/validation_functions.dart';
import 'package:crytavita/widgets/custom_elevated_button.dart';
import 'package:crytavita/widgets/custom_outlined_button.dart';
import 'package:crytavita/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DefualtStateOneScreen extends GetWidget<DefualtStateOneController> {
  DefualtStateOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 38.h,
                    vertical: 1.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup22,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 79.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 43.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 37.v,
                                width: 33.h,
                                margin: EdgeInsets.only(top: 1.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorWhiteA70037x33,
                                      height: 37.v,
                                      width: 33.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVector16x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  "lbl_cryptavita".tr,
                                  style:
                                      CustomTextStyles.headlineSmallWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 170.v),
                      Text(
                        "lbl_login".tr,
                        style: CustomTextStyles.headlineLargeBlack900,
                      ),
                      SizedBox(height: 32.v),
                      _buildEmail(),
                      SizedBox(height: 5.v),
                      _buildEmail1(),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_passsword".tr,
                                style: CustomTextStyles
                                    .bodyMediumRobotoBluegray300,
                              ),
                            ),
                            Text(
                              "lbl_forgot".tr,
                              style: CustomTextStyles.titleSmallRobotoWhiteA700,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Divider(
                  color: appTheme.blueGray80001,
                  indent: 39.h,
                  endIndent: 38.h,
                ),
                SizedBox(height: 23.v),
                _buildLogIn(),
                SizedBox(height: 43.v),
                Text(
                  "msg_or_continue_with".tr,
                  style: CustomTextStyles.bodyMediumRobotoBluegray300,
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildGoogle(),
                      _buildFacebook(),
                    ],
                  ),
                ),
                SizedBox(height: 56.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_account2".tr,
                        style: CustomTextStyles.bodyMediumRobotoBluegray30014,
                      ),
                      TextSpan(
                        text: "lbl_create_now".tr,
                        style: CustomTextStyles.titleSmallRobotoBlueA10001,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
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
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        width: 30.h,
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoBluegray300,
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.centerLeft,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1() {
    return CustomTextFormField(
      controller: controller.emailController1,
      hintText: "msg_raziul_cse_gmail_com".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildLogIn() {
    return CustomElevatedButton(
      height: 40.v,
      text: "lbl_log_in2".tr,
      margin: EdgeInsets.only(
        left: 39.h,
        right: 38.h,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleSmallRobotoWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildGoogle() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 141.h,
      text: "lbl_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMediumRobotoBluegray300,
    );
  }

  /// Section Widget
  Widget _buildFacebook() {
    return CustomOutlinedButton(
      height: 40.v,
      width: 141.h,
      text: "lbl_facebook".tr,
      margin: EdgeInsets.only(left: 16.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrameWhiteA700,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMediumRobotoBluegray300,
    );
  }
}
