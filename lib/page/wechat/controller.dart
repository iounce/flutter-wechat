import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WechatController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<String> chatList = <String>[
    "订阅号消息",
    "腾讯新闻",
    "微信运动",
    "一盎司科技",
    "张三",
    "李四",
    "王五",
  ];

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}
