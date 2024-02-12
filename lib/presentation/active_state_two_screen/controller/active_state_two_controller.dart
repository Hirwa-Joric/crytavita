import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/active_state_two_screen/models/active_state_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveStateTwoScreen.
///
/// This class manages the state of the ActiveStateTwoScreen, including the
/// current activeStateTwoModelObj
class ActiveStateTwoController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ActiveStateTwoModel> activeStateTwoModelObj = ActiveStateTwoModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
