import 'controller/account_and_setting_setting_one_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle_one.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class AccountAndSettingSettingOneScreen extends GetWidget<AccountAndSettingSettingOneController> {const AccountAndSettingSettingOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_app_language".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 23.v), Divider(color: appTheme.gray100), SizedBox(height: 23.v), Text("lbl_notification".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 25.v), Divider(color: appTheme.gray100), SizedBox(height: 25.v), Text("lbl_update_version".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 50.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 14.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "lbl_settings".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
