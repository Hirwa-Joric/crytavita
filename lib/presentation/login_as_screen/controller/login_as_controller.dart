import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/login_as_screen/models/login_as_model.dart';

/// A controller class for the LoginAsScreen.
///
/// This class manages the state of the LoginAsScreen, including the
/// current loginAsModelObj
class LoginAsController extends GetxController {
  Rx<LoginAsModel> loginAsModelObj = LoginAsModel().obs;
}
