import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/default_state_three_screen/models/default_state_three_model.dart';

/// A controller class for the DefaultStateThreeScreen.
///
/// This class manages the state of the DefaultStateThreeScreen, including the
/// current defaultStateThreeModelObj
class DefaultStateThreeController extends GetxController {
  Rx<DefaultStateThreeModel> defaultStateThreeModelObj =
      DefaultStateThreeModel().obs;
}
