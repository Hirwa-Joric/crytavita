import '../controller/account_and_setting_profil_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountAndSettingProfilScreen.
///
/// This class ensures that the AccountAndSettingProfilController is created when the
/// AccountAndSettingProfilScreen is first loaded.
class AccountAndSettingProfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAndSettingProfilController());
  }
}
