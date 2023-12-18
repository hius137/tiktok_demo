/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

import 'package:tiktok/model/entity/image_entity.dart';

ImagesResponse imagesResponseFromJson(String str) => ImagesResponse.fromJson(json.decode(str));

String imagesResponseToJson(ImagesResponse data) => json.encode(data.toJson());

class ImagesResponse {
    ImagesResponse({
        required this.nextPage,
        required this.perPage,
        required this.page,
        required this.photos,
        required this.totalResults,
    });

    String nextPage;
    int perPage;
    int page;
    List<ImageEntity> photos;
    int totalResults;

    factory ImagesResponse.fromJson(Map<dynamic, dynamic> json) => ImagesResponse(
        nextPage: json["next_page"],
        perPage: json["per_page"],
        page: json["page"],
        photos: List<ImageEntity>.from(json["photos"].map((x) => ImageEntity.fromJson(x))),
        totalResults: json["total_results"],
    );

    Map<dynamic, dynamic> toJson() => {
        "next_page": nextPage,
        "per_page": perPage,
        "page": page,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson()).toList()),
        "total_results": totalResults,
    };
}



class Src {
    Src({
        required this.small,
        required this.original,
        required this.large,
        required this.tiny,
        required this.medium,
        required this.large2X,
        required this.portrait,
        required this.landscape,
    });

    String small;
    String original;
    String large;
    String tiny;
    String medium;
    String large2X;
    String portrait;
    String landscape;

    factory Src.fromJson(Map<dynamic, dynamic> json) => Src(
        small: json["small"],
        original: json["original"],
        large: json["large"],
        tiny: json["tiny"],
        medium: json["medium"],
        large2X: json["large2x"],
        portrait: json["portrait"],
        landscape: json["landscape"],
    );

    Map<dynamic, dynamic> toJson() => {
        "small": small,
        "original": original,
        "large": large,
        "tiny": tiny,
        "medium": medium,
        "large2x": large2X,
        "portrait": portrait,
        "landscape": landscape,
    };
}
