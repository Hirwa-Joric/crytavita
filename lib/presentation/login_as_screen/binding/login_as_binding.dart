import '../controller/login_as_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAsScreen.
///
/// This class ensures that the LoginAsController is created when the
/// LoginAsScreen is first loaded.
class LoginAsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAsController());
  }
}
