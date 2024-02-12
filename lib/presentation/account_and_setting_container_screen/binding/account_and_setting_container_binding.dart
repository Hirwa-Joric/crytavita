import '../controller/account_and_setting_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingContainerScreen.
///
/// This class ensures that the AccountAndSettingContainerController is created when the
/// AccountAndSettingContainerScreen is first loaded.
class AccountAndSettingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingContainerController());
  }
}
