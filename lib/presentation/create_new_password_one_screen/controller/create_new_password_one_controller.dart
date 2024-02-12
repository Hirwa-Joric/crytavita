import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/create_new_password_one_screen/models/create_new_password_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateNewPasswordOneScreen.
///
/// This class manages the state of the CreateNewPasswordOneScreen, including the
/// current createNewPasswordOneModelObj
class CreateNewPasswordOneController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreateNewPasswordOneModel> createNewPasswordOneModelObj = CreateNewPasswordOneModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
