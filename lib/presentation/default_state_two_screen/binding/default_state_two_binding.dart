import '../controller/default_state_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateTwoScreen.
///
/// This class ensures that the DefaultStateTwoController is created when the
/// DefaultStateTwoScreen is first loaded.
class DefaultStateTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateTwoController());
  }
}
