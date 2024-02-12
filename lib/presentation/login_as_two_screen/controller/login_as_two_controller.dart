import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/login_as_two_screen/models/login_as_two_model.dart';

/// A controller class for the LoginAsTwoScreen.
///
/// This class manages the state of the LoginAsTwoScreen, including the
/// current loginAsTwoModelObj
class LoginAsTwoController extends GetxController {
  Rx<LoginAsTwoModel> loginAsTwoModelObj = LoginAsTwoModel().obs;
}
