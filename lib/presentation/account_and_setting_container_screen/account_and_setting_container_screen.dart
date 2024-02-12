import 'controller/account_and_setting_container_controller.dart';import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/account_and_setting_page/account_and_setting_page.dart';import 'package:crytavita/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class AccountAndSettingContainerScreen extends GetWidget<AccountAndSettingContainerController> {const AccountAndSettingContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.accountAndSettingPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Floatingiconbluegray10001: return "/"; case BottomBarEnum.Fisrcalendar: return "/"; case BottomBarEnum.Fisrcomment: return "/"; case BottomBarEnum.Fisruser: return AppRoutes.accountAndSettingPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.accountAndSettingPage: return AccountAndSettingPage(); default: return DefaultWidget();} } 
 }
