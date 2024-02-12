import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/presentation/page_sliding_screen/models/page_sliding_model.dart';

/// A controller class for the PageSlidingScreen.
///
/// This class manages the state of the PageSlidingScreen, including the
/// current pageSlidingModelObj
class PageSlidingController extends GetxController {
  Rx<PageSlidingModel> pageSlidingModelObj = PageSlidingModel().obs;
}
