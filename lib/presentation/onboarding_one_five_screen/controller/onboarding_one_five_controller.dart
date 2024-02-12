import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/onboarding_one_five_screen/models/onboarding_one_five_model.dart';/// A controller class for the OnboardingOneFiveScreen.
///
/// This class manages the state of the OnboardingOneFiveScreen, including the
/// current onboardingOneFiveModelObj
class OnboardingOneFiveController extends GetxController {Rx<OnboardingOneFiveModel> onboardingOneFiveModelObj = OnboardingOneFiveModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
