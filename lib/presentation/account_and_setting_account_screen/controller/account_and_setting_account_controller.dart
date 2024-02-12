import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/account_and_setting_account_screen/models/account_and_setting_account_model.dart';import 'package:flutter/material.dart';/// A controller class for the AccountAndSettingAccountScreen.
///
/// This class manages the state of the AccountAndSettingAccountScreen, including the
/// current accountAndSettingAccountModelObj
class AccountAndSettingAccountController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<AccountAndSettingAccountModel> accountAndSettingAccountModelObj = AccountAndSettingAccountModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
