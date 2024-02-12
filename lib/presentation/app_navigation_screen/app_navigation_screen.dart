import 'controller/app_navigation_controller.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Page sliding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageSlidingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Sidebar".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeSidebarScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login As One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginAsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login As Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginAsThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingOneThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingOneFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingOneOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingOneFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding-One Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingOneTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login As Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginAsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.defaultStateFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active State Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activeStateFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Error state".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.errorStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.defaultStateSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify code One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verifyCodeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify code".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verifyCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.defaultStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.defaultStateFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.defaultStateTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.defaultStateOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Default state Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.defaultStateThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login As".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginAsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Defualt State One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.defualtStateOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active State One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activeStateOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active State Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activeStateTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Defualt State".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.defualtStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active State".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activeStateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Active State Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.activeStateThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Profil".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingProfilScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Account".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Setting One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingSettingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Setting Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingSettingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Setting Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingSettingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account and Setting - Setting".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountAndSettingSettingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forget Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create New Password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
