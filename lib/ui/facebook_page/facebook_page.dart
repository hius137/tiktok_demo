import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/ui/facebook_page/ImageWidget.dart';
import 'package:tiktok/ui/facebook_page/facebook_page_vm.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  FacebookPageVM vm = Get.put<FacebookPageVM>(FacebookPageVM());
  @override
  void initState() {
    super.initState();
    vm.getListImages();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FacebookPageVM>(
      builder: (logic) {
        return SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: vm.listImages.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ImageWidget(
                        imgUrl:
                        vm.listImages[index].src.original ?? ""),
                  );
                },
              ),
              const Positioned(
                top: 10,
                child: Text(
                  'Popular Images',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
