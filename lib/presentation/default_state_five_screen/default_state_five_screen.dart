import 'controller/default_state_five_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/core/utils/validation_functions.dart';import 'package:crytavita/widgets/app_bar/appbar_leading_image.dart';import 'package:crytavita/widgets/app_bar/appbar_subtitle_four.dart';import 'package:crytavita/widgets/app_bar/custom_app_bar.dart';import 'package:crytavita/widgets/custom_drop_down.dart';import 'package:crytavita/widgets/custom_outlined_button.dart';import 'package:crytavita/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class DefaultStateFiveScreen extends GetWidget<DefaultStateFiveController> {DefaultStateFiveScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 13.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 11.h), child: Text("msg_create_your_profile".tr, style: CustomTextStyles.headlineSmallGray900))), SizedBox(height: 2.v), Opacity(opacity: 0.8, child: Container(width: 295.h, margin: EdgeInsets.only(left: 14.h, right: 7.h), child: Text("msg_provide_your_profile".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBluegray50013_1.copyWith(height: 1.69)))), SizedBox(height: 28.v), SizedBox(height: 78.adaptSize, width: 78.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse676, height: 78.adaptSize, width: 78.adaptSize, radius: BorderRadius.circular(39.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 18.adaptSize, width: 18.adaptSize, margin: EdgeInsets.only(bottom: 6.v), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.v), decoration: AppDecoration.fillBlue.copyWith(borderRadius: BorderRadiusStyle.circleBorder9), child: CustomImageView(imagePath: ImageConstant.imgGroup5313, height: 10.v, width: 9.h, alignment: Alignment.bottomLeft)))])), SizedBox(height: 45.v), _buildFullName(), SizedBox(height: 8.v), _buildInputField(), SizedBox(height: 8.v), _buildCountry(), SizedBox(height: 8.v), _buildPhoneNumber(), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray300, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_gender".tr, items: controller.defaultStateFiveModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 5, activeDotColor: appTheme.blueA10002, dotColor: appTheme.blueA10002.withOpacity(0.46), activeDotScale: 2.0, dotHeight: 4.v, dotWidth: 4.h))), actions: [AppbarSubtitleFour(text: "lbl_skip".tr, margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v))]); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "lbl_full_name".tr, hintStyle: theme.textTheme.bodySmall!, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v)); } 
/// Section Widget
Widget _buildInputField() { return GestureDetector(onTap: () {onTapInputField();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Obx(() => Text(controller.defaultStateFiveModelObj.value.value.value, style: theme.textTheme.bodySmall))), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(right: 3.h))]))); } 
/// Section Widget
Widget _buildCountry() { return CustomTextFormField(controller: controller.countryController, hintText: "lbl_country".tr, hintStyle: theme.textTheme.bodySmall!, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 13.v, 19.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray300, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 50.v)); } 
/// Section Widget
Widget _buildPhoneNumber() { return CustomTextFormField(controller: controller.phoneNumberController, hintText: "lbl_phone_number".tr, hintStyle: theme.textTheme.bodySmall!, textInputAction: TextInputAction.done, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v)); } 
/// Section Widget
Widget _buildContinue() { return CustomOutlinedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 30.h, right: 29.h, bottom: 59.v), buttonStyle: CustomButtonStyles.outlineBlueATL101); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [defaultStateFiveModelObj] object of the current [value] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapInputField() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.defaultStateFiveModelObj.value.selectedValue!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.defaultStateFiveModelObj.value.selectedValue!.value = dateTime;controller.defaultStateFiveModelObj.value.value.value = dateTime.format(dateTimeFormatPattern);} } 
 }
