import '../controller/default_state_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateFourScreen.
///
/// This class ensures that the DefaultStateFourController is created when the
/// DefaultStateFourScreen is first loaded.
class DefaultStateFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateFourController());
  }
}
