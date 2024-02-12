import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/active_state_three_screen/models/active_state_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveStateThreeScreen.
///
/// This class manages the state of the ActiveStateThreeScreen, including the
/// current activeStateThreeModelObj
class ActiveStateThreeController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ActiveStateThreeModel> activeStateThreeModelObj = ActiveStateThreeModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
