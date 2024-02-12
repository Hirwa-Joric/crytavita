import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/onboarding_one_four_screen/models/onboarding_one_four_model.dart';/// A controller class for the OnboardingOneFourScreen.
///
/// This class manages the state of the OnboardingOneFourScreen, including the
/// current onboardingOneFourModelObj
class OnboardingOneFourController extends GetxController {Rx<OnboardingOneFourModel> onboardingOneFourModelObj = OnboardingOneFourModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
