import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainVM extends GetxController{
  static MainVM get find => Get.find<MainVM>();
  PageController controller = PageController();

  void onPageChange(int index){
    controller.jumpToPage(index);
    print("$index");
  }
}