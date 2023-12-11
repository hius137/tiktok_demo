import 'package:dio/dio.dart';
import 'package:tiktok/service/api.dart';

Dio http = Dio(
  BaseOptions(
    baseUrl: Api.apiUrl,
    // responseType: ResponseType.json,
    // contentType: ContentType.json.toString(),
    headers: {
      'Authorization': Api.apiKey,
    },
  ),
);