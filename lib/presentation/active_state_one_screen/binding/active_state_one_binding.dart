import '../controller/active_state_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveStateOneScreen.
///
/// This class ensures that the ActiveStateOneController is created when the
/// ActiveStateOneScreen is first loaded.
class ActiveStateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveStateOneController());
  }
}
