import '../controller/defualt_state_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefualtStateScreen.
///
/// This class ensures that the DefualtStateController is created when the
/// DefualtStateScreen is first loaded.
class DefualtStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefualtStateController());
  }
}
