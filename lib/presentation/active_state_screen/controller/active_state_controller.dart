import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/active_state_screen/models/active_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveStateScreen.
///
/// This class manages the state of the ActiveStateScreen, including the
/// current activeStateModelObj
class ActiveStateController extends GetxController {TextEditingController languageController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ActiveStateModel> activeStateModelObj = ActiveStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); languageController.dispose(); passwordController.dispose(); } 
 }
