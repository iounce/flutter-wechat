import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_wechat/page/contact/index.dart';
import 'package:flutter_wechat/page/discovery/index.dart';
import 'package:flutter_wechat/page/mine/index.dart';
import 'package:flutter_wechat/page/wechat/index.dart';

class DiscoveryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<String> titleList = <String>[
    "朋友圈",
    "直播",
    "扫一扫",
    "看一看",
    "搜一搜",
    "附近",
    "小程序",
  ];

  final List<IconData> iconList = <IconData>[
    Icons.camera,
    Icons.videocam,
    Icons.qr_code_scanner,
    Icons.slideshow,
    Icons.search,
    Icons.near_me,
    Icons.all_inclusive
  ];

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}
