import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Wechat',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      initialRoute: AppPages.getInitRoute(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}