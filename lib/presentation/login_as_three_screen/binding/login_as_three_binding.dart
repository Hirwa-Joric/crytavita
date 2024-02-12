import '../controller/login_as_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAsThreeScreen.
///
/// This class ensures that the LoginAsThreeController is created when the
/// LoginAsThreeScreen is first loaded.
class LoginAsThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAsThreeController());
  }
}
