import '../controller/onboarding_one_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingOneFourScreen.
///
/// This class ensures that the OnboardingOneFourController is created when the
/// OnboardingOneFourScreen is first loaded.
class OnboardingOneFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingOneFourController());
  }
}
