import '../controller/account_and_setting_setting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingSettingScreen.
///
/// This class ensures that the AccountAndSettingSettingController is created when the
/// AccountAndSettingSettingScreen is first loaded.
class AccountAndSettingSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingSettingController());
  }
}
