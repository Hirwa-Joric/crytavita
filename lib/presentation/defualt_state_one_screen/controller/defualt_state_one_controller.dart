import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/defualt_state_one_screen/models/defualt_state_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DefualtStateOneScreen.
///
/// This class manages the state of the DefualtStateOneScreen, including the
/// current defualtStateOneModelObj
class DefualtStateOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  Rx<DefualtStateOneModel> defualtStateOneModelObj = DefualtStateOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    emailController1.dispose();
  }
}
