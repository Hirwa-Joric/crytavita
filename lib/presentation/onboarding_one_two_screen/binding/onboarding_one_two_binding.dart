import '../controller/onboarding_one_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingOneTwoScreen.
///
/// This class ensures that the OnboardingOneTwoController is created when the
/// OnboardingOneTwoScreen is first loaded.
class OnboardingOneTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingOneTwoController());
  }
}
