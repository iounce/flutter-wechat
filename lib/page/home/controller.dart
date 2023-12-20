import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_wechat/page/contact/index.dart';
import 'package:flutter_wechat/page/discovery/index.dart';
import 'package:flutter_wechat/page/mine/index.dart';
import 'package:flutter_wechat/page/wechat/index.dart';

class HomeTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<String> titles = <String>[
    "微信",
    "通讯录",
    "发现",
    "我",
  ];

  final List<Widget> pages = <Widget>[
    const WechatPage(),
    const ContactPage(),
    const DiscoveryPage(),
    const MinePage(),
  ];

  dynamic title;
  dynamic index;
  dynamic page;

  @override
  Future<void> onInit() async {
    super.onInit();

    index = 0.obs;
    title = titles[0].obs;
    page = pages[0].obs;
  }
}
