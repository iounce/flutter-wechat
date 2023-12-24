import 'dart:convert';
import 'package:azlistview/azlistview.dart';

class IModel extends ISuspensionBean {
  @override
  String toString() {
    return json.encode(this);
  }

  @override
  String getSuspensionTag() {
    throw UnimplementedError();
  }
}