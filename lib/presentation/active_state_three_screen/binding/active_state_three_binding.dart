import '../controller/active_state_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveStateThreeScreen.
///
/// This class ensures that the ActiveStateThreeController is created when the
/// ActiveStateThreeScreen is first loaded.
class ActiveStateThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveStateThreeController());
  }
}
