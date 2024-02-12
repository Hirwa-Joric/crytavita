import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/account_and_setting_setting_three_screen/models/account_and_setting_setting_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the AccountAndSettingSettingThreeScreen.
///
/// This class manages the state of the AccountAndSettingSettingThreeScreen, including the
/// current accountAndSettingSettingThreeModelObj
class AccountAndSettingSettingThreeController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<AccountAndSettingSettingThreeModel> accountAndSettingSettingThreeModelObj = AccountAndSettingSettingThreeModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
