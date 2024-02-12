import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/active_state_one_screen/models/active_state_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveStateOneScreen.
///
/// This class manages the state of the ActiveStateOneScreen, including the
/// current activeStateOneModelObj
class ActiveStateOneController extends GetxController {TextEditingController languageController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ActiveStateOneModel> activeStateOneModelObj = ActiveStateOneModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); languageController.dispose(); passwordController.dispose(); } 
 }
