import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/confirm_dialog/models/confirm_model.dart';

/// A controller class for the ConfirmDialog.
///
/// This class manages the state of the ConfirmDialog, including the
/// current confirmModelObj
class ConfirmController extends GetxController {
  Rx<ConfirmModel> confirmModelObj = ConfirmModel().obs;
}
