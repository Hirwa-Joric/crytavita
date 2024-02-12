import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/account_and_setting_profil_updated_dialog/models/account_and_setting_profil_updated_model.dart';

/// A controller class for the AccountAndSettingProfilUpdatedDialog.
///
/// This class manages the state of the AccountAndSettingProfilUpdatedDialog, including the
/// current accountAndSettingProfilUpdatedModelObj
class AccountAndSettingProfilUpdatedController extends GetxController {
  Rx<AccountAndSettingProfilUpdatedModel>
      accountAndSettingProfilUpdatedModelObj =
      AccountAndSettingProfilUpdatedModel().obs;
}
