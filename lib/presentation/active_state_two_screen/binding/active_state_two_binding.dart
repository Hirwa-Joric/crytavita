import '../controller/active_state_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveStateTwoScreen.
///
/// This class ensures that the ActiveStateTwoController is created when the
/// ActiveStateTwoScreen is first loaded.
class ActiveStateTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveStateTwoController());
  }
}
