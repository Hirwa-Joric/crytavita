import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/account_and_setting_account_update_password_success_dialog/models/account_and_setting_account_update_password_success_model.dart';

/// A controller class for the AccountAndSettingAccountUpdatePasswordSuccessDialog.
///
/// This class manages the state of the AccountAndSettingAccountUpdatePasswordSuccessDialog, including the
/// current accountAndSettingAccountUpdatePasswordSuccessModelObj
class AccountAndSettingAccountUpdatePasswordSuccessController
    extends GetxController {
  Rx<AccountAndSettingAccountUpdatePasswordSuccessModel>
      accountAndSettingAccountUpdatePasswordSuccessModelObj =
      AccountAndSettingAccountUpdatePasswordSuccessModel().obs;
}
