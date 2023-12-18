import 'package:get/get.dart';
import 'package:tiktok/model/entity/image_entity.dart';
import 'package:tiktok/model/entity/video_file_entity.dart';
import 'package:tiktok/model/response/images_response.dart';
import 'package:tiktok/model/response/video_response.dart';
import 'package:tiktok/model/response/popular_response.dart';
import 'package:tiktok/network/dio_config.dart';
import 'package:tiktok/service/api.dart';

class ImageService extends GetxService{

  Future<List<ImageEntity>?> requestImages() async{
    try{
      final response = await http.get(Api.apiImages);
      if (response.data != null){
        ImagesResponse imagesResponse = ImagesResponse.fromJson(response.data);
        return imagesResponse.photos;
      }else{
        return null;
      }
    }catch (e){
      print(e);
      return null;
    }
  }
}