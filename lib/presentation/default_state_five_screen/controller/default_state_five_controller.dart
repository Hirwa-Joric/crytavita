import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/default_state_five_screen/models/default_state_five_model.dart';import 'package:flutter/material.dart';/// A controller class for the DefaultStateFiveScreen.
///
/// This class manages the state of the DefaultStateFiveScreen, including the
/// current defaultStateFiveModelObj
class DefaultStateFiveController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<DefaultStateFiveModel> defaultStateFiveModelObj = DefaultStateFiveModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameController.dispose(); countryController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in defaultStateFiveModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} defaultStateFiveModelObj.value.dropdownItemList.refresh(); } 
 }
