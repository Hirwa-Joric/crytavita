import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/defualt_state_screen/models/defualt_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the DefualtStateScreen.
///
/// This class manages the state of the DefualtStateScreen, including the
/// current defualtStateModelObj
class DefualtStateController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<DefualtStateModel> defualtStateModelObj = DefualtStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
