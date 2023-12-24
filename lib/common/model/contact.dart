import 'package:flutter/material.dart';
import 'package:flutter_wechat/common/model/common.dart';

class ContactModel extends IModel {
  String name;
  String? tagIndex;
  String? namePinyin;

  Color? bgColor;
  IconData? iconData;

  String? img;
  String? id;

  ContactModel({
    required this.name,
    this.tagIndex,
    this.namePinyin,
    this.bgColor,
    this.iconData,
    this.img,
    this.id,
  });

  ContactModel.fromJson(Map<String, dynamic> json)
      : name = json['name'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'img': img,
      };

  @override
  String getSuspensionTag() {
    return tagIndex!;
  }
}
