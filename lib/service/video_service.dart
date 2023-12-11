import 'package:get/get.dart';
import 'package:tiktok/model/entity/video_entity.dart';
import 'package:tiktok/model/response/popular_response.dart';
import 'package:tiktok/network/dio_config.dart';
import 'package:tiktok/service/api.dart';

class VideoService extends GetxService{
  
  Future<List<VideoEntity>?> requestListVideo() async{
    try{
      final response = await http.get(Api.apiPopular);
      if (response.data != null){
        PopularResponse popularResponse = PopularResponse.fromJson(response.data);
        return popularResponse.videos;
      }else{
        return null;
      }
    }catch (e){
      print(e);
      return null;
    }
  }
}