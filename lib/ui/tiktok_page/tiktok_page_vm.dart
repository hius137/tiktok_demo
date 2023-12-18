import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tiktok/model/response/video_response.dart';
import 'package:tiktok/service/video_service.dart';

class TiktokPageVM extends GetxController {
  static TiktokPageVM get find => Get.find<TiktokPageVM>();
  VideoService videoService = Get.find();
  List<VideoEntity> listVideos = [];

  Future<void> getListPopular()async {
    try{
      final List<VideoEntity>? result = await videoService.requestListVideo();
      if( result != null){
        listVideos = result;
        update();
      }
    }catch(e){
      print(e);
    }
  }
}