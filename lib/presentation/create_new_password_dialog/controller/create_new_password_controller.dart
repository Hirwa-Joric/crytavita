import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/create_new_password_dialog/models/create_new_password_model.dart';

/// A controller class for the CreateNewPasswordDialog.
///
/// This class manages the state of the CreateNewPasswordDialog, including the
/// current createNewPasswordModelObj
class CreateNewPasswordController extends GetxController {
  Rx<CreateNewPasswordModel> createNewPasswordModelObj =
      CreateNewPasswordModel().obs;
}
