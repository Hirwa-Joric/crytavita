import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/account_and_setting_page/models/account_and_setting_model.dart';

/// A controller class for the AccountAndSettingPage.
///
/// This class manages the state of the AccountAndSettingPage, including the
/// current accountAndSettingModelObj
class AccountAndSettingController extends GetxController {
  AccountAndSettingController(this.accountAndSettingModelObj);

  Rx<AccountAndSettingModel> accountAndSettingModelObj;
}
