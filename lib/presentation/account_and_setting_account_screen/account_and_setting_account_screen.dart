import 'controller/account_and_setting_account_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/core/utils/validation_functions.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle_one.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:crytavita/widgets/custom_elevated_button.dart';import 'package:crytavita/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AccountAndSettingAccountScreen extends GetWidget<AccountAndSettingAccountController> {AccountAndSettingAccountScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_old_password".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 8.v), _buildPassword(), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_new_password".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 8.v), _buildNewpassword(), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Text("msg_confirm_password".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 9.v), _buildConfirmpassword(), SizedBox(height: 24.v), _buildUpdatePassword(), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 48.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "lbl_account".tr)); } 
/// Section Widget
Widget _buildPassword() { return CustomTextFormField(controller: controller.passwordController, hintText: "lbl_old_password2".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildNewpassword() { return CustomTextFormField(controller: controller.newpasswordController, hintText: "lbl_new_password2".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildConfirmpassword() { return CustomTextFormField(controller: controller.confirmpasswordController, hintText: "msg_confirm_password2".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildUpdatePassword() { return CustomElevatedButton(height: 56.v, text: "lbl_update_password".tr, buttonStyle: CustomButtonStyles.fillBlueATL10, buttonTextStyle: CustomTextStyles.titleMedium17); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
