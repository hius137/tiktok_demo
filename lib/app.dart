import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/app_ctrl.dart';
import 'package:tiktok/service/video_service.dart';
import 'package:tiktok/ui/main/main.dart';

Future initService() async {
  Get.put<VideoService>(VideoService());
  Get.put<AppCtrl>(AppCtrl());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppCtrl>(
      builder: (logic) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: MainPage(),
          ),
        );
      },
    );
  }
}
