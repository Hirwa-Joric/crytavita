import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/account_and_setting_profil_screen/models/account_and_setting_profil_model.dart';import 'package:flutter/material.dart';/// A controller class for the AccountAndSettingProfilScreen.
///
/// This class manages the state of the AccountAndSettingProfilScreen, including the
/// current accountAndSettingProfilModelObj
class AccountAndSettingProfilController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController labeldisableController = TextEditingController();

TextEditingController locationController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<AccountAndSettingProfilModel> accountAndSettingProfilModelObj = AccountAndSettingProfilModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); labeldisableController.dispose(); locationController.dispose(); addressController.dispose(); } 
 }
