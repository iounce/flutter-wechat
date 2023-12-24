import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          height: 128.0,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 16.0,
                  ),
                  const Icon(
                    Icons.security,
                    size: 56.0,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Column(
                    children: [
                      const Text(
                        '一盎司科技',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      Container(
                        height: 8.0,
                      ),
                      const Text('微信号：iounce_tech'),
                    ],
                  )
                ],
              ),
              Container(
                height: 16.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                    label: Text(
                      '状态',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12.0,),
                    ),
                    style: ButtonStyle(
                        //shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)))
                        side: MaterialStateProperty.all(
                          BorderSide(width: 1.0, color: Colors.grey.shade300),
                        )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 8.0,
          color: Colors.grey[200],
        ),
        ListTile(
          title: const Text('服务'),
          leading: const Icon(
            Icons.payment,
            color: Colors.blueAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
          ),
          onTap: () {},
        ),
        Container(
          height: 8.0,
          color: Colors.grey[200],
        ),
        ListTile(
          title: const Text('收藏'),
          leading: const Icon(
            Icons.color_lens_outlined,
            color: Colors.blueAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
          ),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
          color: Colors.grey[200],
        ),
        ListTile(
          title: const Text('朋友圈'),
          leading: const Icon(
            Icons.image_outlined,
            color: Colors.blueAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
          ),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
          color: Colors.grey[200],
        ),
        ListTile(
          title: const Text('表情'),
          leading: const Icon(
            Icons.mood_outlined,
            color: Colors.blueAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
          ),
          onTap: () {},
        ),
        Container(
          height: 8.0,
          color: Colors.grey[200],
        ),
        ListTile(
          title: const Text('设置'),
          leading: const Icon(
            Icons.settings,
            color: Colors.blueAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
