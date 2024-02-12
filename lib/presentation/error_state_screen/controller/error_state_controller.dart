import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/error_state_screen/models/error_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the ErrorStateScreen.
///
/// This class manages the state of the ErrorStateScreen, including the
/// current errorStateModelObj
class ErrorStateController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ErrorStateModel> errorStateModelObj = ErrorStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
