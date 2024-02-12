import '../controller/account_and_setting_setting_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingSettingTwoScreen.
///
/// This class ensures that the AccountAndSettingSettingTwoController is created when the
/// AccountAndSettingSettingTwoScreen is first loaded.
class AccountAndSettingSettingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingSettingTwoController());
  }
}
