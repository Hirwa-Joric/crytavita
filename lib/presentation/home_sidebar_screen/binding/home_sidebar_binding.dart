import '../controller/home_sidebar_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSidebarScreen.
///
/// This class ensures that the HomeSidebarController is created when the
/// HomeSidebarScreen is first loaded.
class HomeSidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSidebarController());
  }
}
