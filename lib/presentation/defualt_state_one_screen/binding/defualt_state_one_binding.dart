import '../controller/defualt_state_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DefualtStateOneScreen.
///
/// This class ensures that the DefualtStateOneController is created when the
/// DefualtStateOneScreen is first loaded.
class DefualtStateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefualtStateOneController());
  }
}
