import '../controller/account_and_setting_setting_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingSettingOneScreen.
///
/// This class ensures that the AccountAndSettingSettingOneController is created when the
/// AccountAndSettingSettingOneScreen is first loaded.
class AccountAndSettingSettingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingSettingOneController());
  }
}
