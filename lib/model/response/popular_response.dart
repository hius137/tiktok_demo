import 'dart:convert';

import 'package:tiktok/model/response/video_response.dart';

PopularResponse popularResponseFromJson(String str) => PopularResponse.fromJson(json.decode(str));

String popularResponseToJson(PopularResponse data) => json.encode(data.toJson());

class PopularResponse {
    PopularResponse({
        required this.nextPage,
        required this.perPage,
        required this.videos,
        required this.page,
        required this.url,
        required this.totalResults,
    });

    String nextPage;
    int perPage;
    List<VideoEntity> videos;
    int page;
    String url;
    int totalResults;

    factory PopularResponse.fromJson(Map<dynamic, dynamic> json) => PopularResponse(
        nextPage: json["next_page"],
        perPage: json["per_page"],
        videos: List<VideoEntity>.from(json["videos"].map((x) => VideoEntity.fromJson(x))),
        page: json["page"],
        url: json["url"],
        totalResults: json["total_results"],
    );

    Map<dynamic, dynamic> toJson() => {
        "next_page": nextPage,
        "per_page": perPage,
        "videos": List<dynamic>.from(videos.map((x) => x.toJson()).toList()),
        "page": page,
        "url": url,
        "total_results": totalResults,
    };

}

