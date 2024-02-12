import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/home_five_screen/models/home_five_model.dart';

/// A controller class for the HomeFiveScreen.
///
/// This class manages the state of the HomeFiveScreen, including the
/// current homeFiveModelObj
class HomeFiveController extends GetxController {
  Rx<HomeFiveModel> homeFiveModelObj = HomeFiveModel().obs;
}
