import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/login_as_one_screen/models/login_as_one_model.dart';

/// A controller class for the LoginAsOneScreen.
///
/// This class manages the state of the LoginAsOneScreen, including the
/// current loginAsOneModelObj
class LoginAsOneController extends GetxController {
  Rx<LoginAsOneModel> loginAsOneModelObj = LoginAsOneModel().obs;
}
