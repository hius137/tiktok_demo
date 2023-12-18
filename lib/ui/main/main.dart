import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/ui/facebook_page/facebook_page.dart';
import 'package:tiktok/ui/main/main_vm.dart';
import 'package:tiktok/ui/tiktok_page/tiktok_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainVM vm = Get.put<MainVM>(MainVM());
  List<IconData> listIcon = [Icons.tiktok, Icons.facebook];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainVM>(builder: (logic) {
      return Scaffold(
        body: PageView(
          controller: vm.controller,
          children: const [
            TiktokPage(),
            FacebookPage(),
          ],
        ),
        bottomNavigationBar: _buildBottomNav(),
      );
    });
  }

  Widget _buildBottomNav() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            2,
            (index) => InkWell(
              onTap: () => vm.onPageChange(index),
              child: _itemBottom(
                index,
                listIcon,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemBottom(
    int index,
    List<IconData> listIcon,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(listIcon[index]),
    );
  }
}
