import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/active_state_four_screen/models/active_state_four_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveStateFourScreen.
///
/// This class manages the state of the ActiveStateFourScreen, including the
/// current activeStateFourModelObj
class ActiveStateFourController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<ActiveStateFourModel> activeStateFourModelObj = ActiveStateFourModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
