import '../controller/login_as_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAsOneScreen.
///
/// This class ensures that the LoginAsOneController is created when the
/// LoginAsOneScreen is first loaded.
class LoginAsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAsOneController());
  }
}
