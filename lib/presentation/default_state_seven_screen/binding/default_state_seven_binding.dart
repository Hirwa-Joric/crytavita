import '../controller/default_state_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefaultStateSevenScreen.
///
/// This class ensures that the DefaultStateSevenController is created when the
/// DefaultStateSevenScreen is first loaded.
class DefaultStateSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultStateSevenController());
  }
}
