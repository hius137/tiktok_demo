import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/ui/tiktok_page/tiktok_page_vm.dart';

class TiktokPage extends StatefulWidget {
  const TiktokPage({super.key});

  @override
  State<TiktokPage> createState() => _TiktokPageState();
}

class _TiktokPageState extends State<TiktokPage> {
  TiktokPageVM vm = Get.put<TiktokPageVM>(TiktokPageVM());

  @override
  void initState() {
    vm.getListPopular();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TiktokPageVM>(
      builder: (logic) {
        return SafeArea(
          child: Container(
            color: Colors.black,
          ),
        );
      },
    );
  }
}
