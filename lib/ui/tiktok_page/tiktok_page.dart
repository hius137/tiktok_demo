import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/model/entity/video_entity.dart';
import 'package:tiktok/ui/tiktok_page/tiktok_page_vm.dart';
import 'package:tiktok/ui/tiktok_page/widget/video_widget.dart';

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
        // List<VideoEntity> listVideos = logic.listVideos;
        return SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: vm.listVideos.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    child: VideoWidget(videoUrl: vm.listVideos[index].url ?? ""),
                  );
                },
              ),
              const Positioned(
                top: 10,
                child: Text(
                  'Popular video',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
