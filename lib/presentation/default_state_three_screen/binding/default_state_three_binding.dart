import '../controller/default_state_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateThreeScreen.
///
/// This class ensures that the DefaultStateThreeController is created when the
/// DefaultStateThreeScreen is first loaded.
class DefaultStateThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateThreeController());
  }
}
