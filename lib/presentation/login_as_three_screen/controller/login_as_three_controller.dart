import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/login_as_three_screen/models/login_as_three_model.dart';

/// A controller class for the LoginAsThreeScreen.
///
/// This class manages the state of the LoginAsThreeScreen, including the
/// current loginAsThreeModelObj
class LoginAsThreeController extends GetxController {
  Rx<LoginAsThreeModel> loginAsThreeModelObj = LoginAsThreeModel().obs;
}
