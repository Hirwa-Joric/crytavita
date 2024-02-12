import '../controller/login_as_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAsTwoScreen.
///
/// This class ensures that the LoginAsTwoController is created when the
/// LoginAsTwoScreen is first loaded.
class LoginAsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAsTwoController());
  }
}
