import '../controller/account_and_setting_setting_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingSettingThreeScreen.
///
/// This class ensures that the AccountAndSettingSettingThreeController is created when the
/// AccountAndSettingSettingThreeScreen is first loaded.
class AccountAndSettingSettingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingSettingThreeController());
  }
}
