import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/onboarding_one_two_screen/models/onboarding_one_two_model.dart';/// A controller class for the OnboardingOneTwoScreen.
///
/// This class manages the state of the OnboardingOneTwoScreen, including the
/// current onboardingOneTwoModelObj
class OnboardingOneTwoController extends GetxController {Rx<OnboardingOneTwoModel> onboardingOneTwoModelObj = OnboardingOneTwoModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
