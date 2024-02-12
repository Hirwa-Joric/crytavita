import '../controller/active_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveStateScreen.
///
/// This class ensures that the ActiveStateController is created when the
/// ActiveStateScreen is first loaded.
class ActiveStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveStateController());
  }
}
