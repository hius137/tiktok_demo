import 'package:get/get.dart';
import 'package:tiktok/model/entity/image_entity.dart';
import 'package:tiktok/service/Images_service.dart';

class FacebookPageVM extends GetxController{
  static FacebookPageVM get find => Get.find<FacebookPageVM>();
  ImageService imageService = ImageService();
  List<ImageEntity> listImages = [];

  Future<void> getListImages()async {
    try{
      final List<ImageEntity>? result = await imageService.requestImages();
      if( result != null){
        listImages = result;
        update();
      }
    }catch(e){
      print(e);
    }
  }
}