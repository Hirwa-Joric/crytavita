import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/verify_code_one_screen/models/verify_code_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyCodeOneScreen.
///
/// This class manages the state of the VerifyCodeOneScreen, including the
/// current verifyCodeOneModelObj
class VerifyCodeOneController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyCodeOneModel> verifyCodeOneModelObj = VerifyCodeOneModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
