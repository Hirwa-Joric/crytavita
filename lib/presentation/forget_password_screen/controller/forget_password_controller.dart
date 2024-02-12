import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/forget_password_screen/models/forget_password_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ForgetPasswordScreen.
///
/// This class manages the state of the ForgetPasswordScreen, including the
/// current forgetPasswordModelObj
class ForgetPasswordController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgetPasswordModel> forgetPasswordModelObj = ForgetPasswordModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
