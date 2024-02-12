import '../controller/verify_code_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyCodeOneScreen.
///
/// This class ensures that the VerifyCodeOneController is created when the
/// VerifyCodeOneScreen is first loaded.
class VerifyCodeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyCodeOneController());
  }
}
