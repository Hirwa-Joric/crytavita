import '../controller/active_state_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveStateFourScreen.
///
/// This class ensures that the ActiveStateFourController is created when the
/// ActiveStateFourScreen is first loaded.
class ActiveStateFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveStateFourController());
  }
}
