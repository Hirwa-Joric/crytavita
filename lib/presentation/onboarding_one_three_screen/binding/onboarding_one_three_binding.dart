import '../controller/onboarding_one_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingOneThreeScreen.
///
/// This class ensures that the OnboardingOneThreeController is created when the
/// OnboardingOneThreeScreen is first loaded.
class OnboardingOneThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingOneThreeController());
  }
}
