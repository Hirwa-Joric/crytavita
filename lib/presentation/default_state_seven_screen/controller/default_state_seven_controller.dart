import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/default_state_seven_screen/models/default_state_seven_model.dart';import 'package:flutter/material.dart';/// A controller class for the DefaultStateSevenScreen.
///
/// This class manages the state of the DefaultStateSevenScreen, including the
/// current defaultStateSevenModelObj
class DefaultStateSevenController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<DefaultStateSevenModel> defaultStateSevenModelObj = DefaultStateSevenModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
