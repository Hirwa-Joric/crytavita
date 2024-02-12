import '../controller/page_sliding_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageSlidingScreen.
///
/// This class ensures that the PageSlidingController is created when the
/// PageSlidingScreen is first loaded.
class PageSlidingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageSlidingController());
  }
}
