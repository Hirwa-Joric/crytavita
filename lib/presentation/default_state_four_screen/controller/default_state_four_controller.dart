import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/default_state_four_screen/models/default_state_four_model.dart';import 'package:flutter/material.dart';/// A controller class for the DefaultStateFourScreen.
///
/// This class manages the state of the DefaultStateFourScreen, including the
/// current defaultStateFourModelObj
class DefaultStateFourController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<DefaultStateFourModel> defaultStateFourModelObj = DefaultStateFourModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
