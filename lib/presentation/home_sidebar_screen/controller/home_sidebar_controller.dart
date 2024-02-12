import 'package:crytavita/core/app_export.dart';import 'package:crytavita/presentation/home_sidebar_screen/models/home_sidebar_model.dart';/// A controller class for the HomeSidebarScreen.
///
/// This class manages the state of the HomeSidebarScreen, including the
/// current homeSidebarModelObj
class HomeSidebarController extends GetxController {Rx<HomeSidebarModel> homeSidebarModelObj = HomeSidebarModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.loginAsOneScreen,);}); } 
 }
