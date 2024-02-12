import '../controller/onboarding_one_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingOneFiveScreen.
///
/// This class ensures that the OnboardingOneFiveController is created when the
/// OnboardingOneFiveScreen is first loaded.
class OnboardingOneFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingOneFiveController());
  }
}
