import 'package:get/get.dart';
import '../../page/home/index.dart';
import '../../page/wechat/index.dart';
import '../../page/contact/index.dart';
import '../../page/discovery/index.dart';
import '../../page/mine/index.dart';

abstract class AppRoutes {
  static const String homePage = '/home';
  static const String wechatPage = '/wechat';
  static const String contactPage = '/contact';
  static const String discoveryPage = '/discovery';
  static const String minePage = '/mine';
}

class AppPages {
  static const initRoute = AppRoutes.homePage;
  static String getInitRoute() {
    return AppRoutes.homePage;
  }

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.wechatPage,
      page: () => const WechatPage(),
    ),
    GetPage(
      name: AppRoutes.contactPage,
      page: () => const ContactPage(),
    ),
    GetPage(
      name: AppRoutes.discoveryPage,
      page: () => const DiscoveryPage(),
    ),
    GetPage(
      name: AppRoutes.minePage,
      page: () => const MinePage(),
    ),
  ];
}