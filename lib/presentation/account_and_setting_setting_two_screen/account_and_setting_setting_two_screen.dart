import 'controller/account_and_setting_setting_two_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class AccountAndSettingSettingTwoScreen extends GetWidget<AccountAndSettingSettingTwoController> {const AccountAndSettingSettingTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_about_us".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 16.v), Divider(color: appTheme.gray100), SizedBox(height: 17.v), Text("lbl_help2".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 15.v), Divider(color: appTheme.gray100), SizedBox(height: 15.v), Text("msg_term_and_condition".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 17.v), Divider(color: appTheme.gray100), SizedBox(height: 15.v), Text("lbl_data_protection".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 47.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 11.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_about_us".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
