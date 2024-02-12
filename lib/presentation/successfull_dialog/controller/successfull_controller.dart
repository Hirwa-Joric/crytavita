import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/successfull_dialog/models/successfull_model.dart';

/// A controller class for the SuccessfullDialog.
///
/// This class manages the state of the SuccessfullDialog, including the
/// current successfullModelObj
class SuccessfullController extends GetxController {
  Rx<SuccessfullModel> successfullModelObj = SuccessfullModel().obs;
}
