import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/default_state_six_dialog/models/default_state_six_model.dart';

/// A controller class for the DefaultStateSixDialog.
///
/// This class manages the state of the DefaultStateSixDialog, including the
/// current defaultStateSixModelObj
class DefaultStateSixController extends GetxController {
  Rx<DefaultStateSixModel> defaultStateSixModelObj = DefaultStateSixModel().obs;
}
