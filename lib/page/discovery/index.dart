import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class DiscoveryPage extends StatelessWidget {
  DiscoveryPage({super.key});

  final DiscoveryController _discoveryController = Get.put(DiscoveryController());

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
            height: 0.0,
          );
        },
        itemCount: _discoveryController.titleList.length,
        itemBuilder: (context, index) {
          if (_discoveryController.titleList.isEmpty) {
            return Container();
          }

          var title = _discoveryController.titleList[index];
          var iconData = _discoveryController.iconList[index];

          return ListTile(
            title: Text(title),
            leading: Icon(
              iconData,
              color: Colors.blueAccent,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.grey[400],
            ),
            onTap: () {},
          );
        });
  }
}