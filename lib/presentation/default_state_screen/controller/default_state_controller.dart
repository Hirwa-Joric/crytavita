import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/default_state_screen/models/default_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the DefaultStateScreen.
///
/// This class manages the state of the DefaultStateScreen, including the
/// current defaultStateModelObj
class DefaultStateController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<DefaultStateModel> defaultStateModelObj = DefaultStateModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameController.dispose(); countryController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in defaultStateModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} defaultStateModelObj.value.dropdownItemList.refresh(); } 
 }
