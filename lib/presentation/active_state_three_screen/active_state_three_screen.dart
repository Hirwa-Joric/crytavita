import 'controller/active_state_three_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/core/utils/validation_functions.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle_four.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:crytavita/widgets/custom_elevated_button.dart';import 'package:crytavita/widgets/custom_floating_text_field.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class ActiveStateThreeScreen extends GetWidget<ActiveStateThreeController> {ActiveStateThreeScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 6.v), child: Column(children: [_buildFrame(), SizedBox(height: 54.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: CustomFloatingTextField(controller: controller.emailController, labelText: "lbl_email".tr, labelStyle: CustomTextStyles.bodyMediumInterGray900, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;})), SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Obx(() => CustomFloatingTextField(controller: controller.passwordController, labelText: "lbl_password".tr, labelStyle: CustomTextStyles.bodySmallErrorContainer12, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: controller.isShowPassword.value, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.symmetric(horizontal: 16.h), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}))), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 6.adaptSize, width: 6.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 9.v), decoration: BoxDecoration(color: appTheme.red600, borderRadius: BorderRadius.circular(3.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_email_and_password".tr, style: CustomTextStyles.bodySmallPoppinsRed600))]))), SizedBox(height: 27.v), CustomElevatedButton(text: "lbl_sign_in".tr, margin: EdgeInsets.symmetric(horizontal: 16.h), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientIndigoAToPrimaryDecoration), SizedBox(height: 29.v), Text("msg_forgot_the_password".tr, style: CustomTextStyles.titleSmallBlueA10002_1), SizedBox(height: 27.v), _buildFrame1(), SizedBox(height: 25.v), CustomImageView(imagePath: ImageConstant.imgFrame1171274949, height: 52.v, width: 295.h), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 40.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 5, activeDotColor: appTheme.blueA10002, dotColor: appTheme.blueA10002.withOpacity(0.46), activeDotScale: 2.0, dotHeight: 4.v, dotWidth: 4.h))), actions: [AppbarSubtitleFour(text: "lbl_create_account2".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 2.v))]); } 
/// Section Widget
Widget _buildFrame() { return Container(width: 359.h, margin: EdgeInsets.only(left: 16.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), decoration: AppDecoration.fillWhiteA, child: Container(width: 236.h, margin: EdgeInsets.only(right: 90.h), child: Text("msg_sign_in_to_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineLarge!.copyWith(height: 1.50)))); } 
/// Section Widget
Widget _buildFrame1() { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 104.h, child: Divider())), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("msg_or_continue_with2".tr, style: CustomTextStyles.bodyMediumErrorContainer)), Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 114.h, child: Divider(indent: 10.h)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
