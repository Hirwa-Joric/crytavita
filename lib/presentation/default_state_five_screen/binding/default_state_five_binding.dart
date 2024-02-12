import '../controller/default_state_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateFiveScreen.
///
/// This class ensures that the DefaultStateFiveController is created when the
/// DefaultStateFiveScreen is first loaded.
class DefaultStateFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateFiveController());
  }
}
