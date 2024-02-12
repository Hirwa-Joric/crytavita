import '../controller/error_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ErrorStateScreen.
///
/// This class ensures that the ErrorStateController is created when the
/// ErrorStateScreen is first loaded.
class ErrorStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ErrorStateController());
  }
}
