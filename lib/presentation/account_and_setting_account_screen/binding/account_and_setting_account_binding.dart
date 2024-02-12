import '../controller/account_and_setting_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingAccountScreen.
///
/// This class ensures that the AccountAndSettingAccountController is created when the
/// AccountAndSettingAccountScreen is first loaded.
class AccountAndSettingAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingAccountController());
  }
}
