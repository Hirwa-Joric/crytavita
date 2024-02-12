import '../controller/create_new_password_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewPasswordOneScreen.
///
/// This class ensures that the CreateNewPasswordOneController is created when the
/// CreateNewPasswordOneScreen is first loaded.
class CreateNewPasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPasswordOneController());
  }
}
