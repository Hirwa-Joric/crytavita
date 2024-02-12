import '../controller/default_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateScreen.
///
/// This class ensures that the DefaultStateController is created when the
/// DefaultStateScreen is first loaded.
class DefaultStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateController());
  }
}
