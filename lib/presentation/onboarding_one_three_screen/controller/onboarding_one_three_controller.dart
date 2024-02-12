import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/onboarding_one_three_screen/models/onboarding_one_three_model.dart';/// A controller class for the OnboardingOneThreeScreen.
///
/// This class manages the state of the OnboardingOneThreeScreen, including the
/// current onboardingOneThreeModelObj
class OnboardingOneThreeController extends GetxController {Rx<OnboardingOneThreeModel> onboardingOneThreeModelObj = OnboardingOneThreeModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
