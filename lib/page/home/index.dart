import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeTabController _tabController = Get.put(HomeTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Obx(() => Text(_tabController.title.value)),
      ),
      body: Obx(() => _tabController.page.value), // Thi
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.greenAccent[400],
            backgroundColor: Colors.grey[100],
            currentIndex: _tabController.index.value,
            onTap: (index) {
              _tabController.index.value = index;
              _tabController.title.value = _tabController.titles[index];
              _tabController.page.value = _tabController.pages[index];
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.greenAccent,
                  ),
                  label: '微信'),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.people,
                      color: Colors.black),
                  activeIcon: Icon(
                      Icons.people,
                      color: Colors.greenAccent
                  ),
                  label: '通讯录'),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.explore,
                      color: Colors.black
                  ),
                  activeIcon: Icon(
                      Icons.explore,
                      color: Colors.greenAccent
                  ),
                  label: '发现'),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.person,
                      color: Colors.black
                  ),
                  activeIcon: Icon(
                      Icons.person,
                      color: Colors.greenAccent
                  ),
                  label: '我'),
            ],
          )),
    );
  }
}
