import '../controller/default_state_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateOneScreen.
///
/// This class ensures that the DefaultStateOneController is created when the
/// DefaultStateOneScreen is first loaded.
class DefaultStateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateOneController());
  }
}
