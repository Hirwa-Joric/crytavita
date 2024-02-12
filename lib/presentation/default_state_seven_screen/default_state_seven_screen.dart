import 'controller/default_state_seven_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/core/utils/validation_functions.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle_four.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:crytavita/widgets/custom_elevated_button.dart';import 'package:crytavita/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class DefaultStateSevenScreen extends GetWidget<DefaultStateSevenController> {DefaultStateSevenScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Container(width: 197.h, margin: EdgeInsets.only(left: 24.h), child: Text("msg_create_your_account".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineLarge!.copyWith(height: 1.50)))), SizedBox(height: 23.v), _buildUserName(), SizedBox(height: 16.v), _buildEmail(), SizedBox(height: 16.v), _buildPassword(), SizedBox(height: 16.v), _buildConfirmpassword(), SizedBox(height: 41.v), _buildCREATEACCOUNT(), SizedBox(height: 47.v), _buildFrame(), SizedBox(height: 19.v), Padding(padding: EdgeInsets.symmetric(horizontal: 28.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 52.v, width: 77.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 26.adaptSize, width: 26.adaptSize, alignment: Alignment.center)), Container(height: 52.v, width: 77.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: CustomImageView(imagePath: ImageConstant.imgFrameDeepOrange500, height: 26.adaptSize, width: 26.adaptSize, alignment: Alignment.center)), Container(height: 52.v, width: 77.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: CustomImageView(imagePath: ImageConstant.imgFrameBlack900, height: 26.adaptSize, width: 26.adaptSize, alignment: Alignment.center))])), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 5, activeDotColor: appTheme.blueA10002, dotColor: appTheme.blueA10002.withOpacity(0.46), activeDotScale: 2.0, dotHeight: 4.v, dotWidth: 4.h))), actions: [AppbarSubtitleFour(text: "lbl_sign_in2".tr, margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v))]); } 
/// Section Widget
Widget _buildUserName() { return Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: controller.userNameController, hintText: "lbl_user_name".tr, hintStyle: CustomTextStyles.bodyMediumInterBluegray30001, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v))); } 
/// Section Widget
Widget _buildEmail() { return Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: CustomTextStyles.bodyMediumInterBluegray30001, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v))); } 
/// Section Widget
Widget _buildPassword() { return Padding(padding: EdgeInsets.only(left: 8.h), child: Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodyMediumInterBluegray30001, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value))); } 
/// Section Widget
Widget _buildConfirmpassword() { return Padding(padding: EdgeInsets.only(left: 8.h), child: Obx(() => CustomTextFormField(controller: controller.confirmpasswordController, hintText: "msg_confirm_password".tr, hintStyle: CustomTextStyles.bodyMediumInterBluegray30001, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword1.value))); } 
/// Section Widget
Widget _buildCREATEACCOUNT() { return CustomElevatedButton(text: "lbl_create_account".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillBlueTL261); } 
/// Section Widget
Widget _buildFrame() { return Padding(padding: EdgeInsets.only(left: 3.h, right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 108.h, child: Divider())), Text("lbl_or_create_with".tr, style: CustomTextStyles.bodyMediumErrorContainer), Padding(padding: EdgeInsets.only(top: 10.v, bottom: 9.v), child: SizedBox(width: 108.h, child: Divider()))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
