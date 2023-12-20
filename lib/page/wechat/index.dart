import 'package:flutter/material.dart';

class WechatPage extends StatelessWidget {
  const WechatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("微信")
        ],
      ),
    );
  }
}