import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class WechatPage extends StatelessWidget {
  WechatPage({super.key});

  final WechatController _wechatController = Get.put(WechatController());

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
            height: 0.0,
          );
        },
        itemCount: _wechatController.chatList.length,
        itemBuilder: (context, index) {
          if (_wechatController.chatList.isEmpty) {
            return Container();
          }

          var title = _wechatController.chatList[index];

          return ListTile(
            title: Text(title),
            subtitle: Text(
              '提示',
              style: TextStyle(color: Colors.grey[400]),
            ),
            leading: const Icon(
              Icons.book,
              color: Colors.greenAccent,
              size: 48.0,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '10:00',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[500], fontSize: 15.0),
                ),
                Icon(
                  Icons.notifications_off_outlined,
                  color: Colors.grey[400],
                )
              ],
            ),
            onTap: () {},
          );
        });
  }
}
