import 'dart:convert';
import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wechat/common/model/contact.dart';
import 'package:get/get.dart';
import 'package:lpinyin/lpinyin.dart';

class ContactController extends GetxController
    with GetSingleTickerProviderStateMixin {
  List<ContactModel> contactList = [];
  final List<ContactModel> topList = <ContactModel>[
    ContactModel(
        name: '新的朋友',
        tagIndex: '↑',
        bgColor: Colors.orange,
        iconData: Icons.person_add),
    ContactModel(
        name: '群聊',
        tagIndex: '↑',
        bgColor: Colors.green,
        iconData: Icons.people),
    ContactModel(
        name: '标签',
        tagIndex: '↑',
        bgColor: Colors.blue,
        iconData: Icons.local_offer),
    ContactModel(
        name: '公众号',
        tagIndex: '↑',
        bgColor: Colors.blueAccent,
        iconData: Icons.person)
  ];

  void loadData() async {
    rootBundle.loadString('assets/data/car_models.json').then((value) {
      var dataList = json.decode(value);
      dataList.forEach((v) {
        contactList.add(ContactModel.fromJson(v));
      });

      handleData(contactList);
    });
  }

  void handleData(List<ContactModel> list) {
    if (list.isEmpty) return;
    for (int i = 0, length = list.length; i < length; i++) {
      String pinyin = PinyinHelper.getPinyinE(list[i].name);
      String tag = pinyin.substring(0, 1).toUpperCase();
      list[i].namePinyin = pinyin;
      if (RegExp("[A-Z]").hasMatch(tag)) {
        list[i].tagIndex = tag;
      } else {
        list[i].tagIndex = "#";
      }
    }
    // A-Z sort.
    SuspensionUtil.sortListBySuspensionTag(contactList);

    // show sus tag.
    SuspensionUtil.setShowSuspensionStatus(contactList);

    // add topList.
    contactList.insertAll(0, topList);
  }

  @override
  Future<void> onInit() async {
    super.onInit();

    loadData();
  }
}
