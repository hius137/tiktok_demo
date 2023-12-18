import 'package:tiktok/model/response/images_response.dart';

class ImageEntity {
  ImageEntity({
    required this.src,
    required this.width,
    required this.avgColor,
    required this.alt,
    required this.photographer,
    required this.photographerUrl,
    required this.id,
    required this.url,
    required this.photographerId,
    required this.liked,
    required this.height,
  });

  Src src;
  int width;
  String avgColor;
  String alt;
  String photographer;
  String photographerUrl;
  int id;
  String url;
  int photographerId;
  bool liked;
  int height;

  factory ImageEntity.fromJson(Map<dynamic, dynamic> json) => ImageEntity(
    src: Src.fromJson(json["src"]),
    width: json["width"],
    avgColor: json["avg_color"],
    alt: json["alt"],
    photographer: json["photographer"],
    photographerUrl: json["photographer_url"],
    id: json["id"],
    url: json["url"],
    photographerId: json["photographer_id"],
    liked: json["liked"],
    height: json["height"],
  );

  Map<dynamic, dynamic> toJson() => {
    "src": src.toJson(),
    "width": width,
    "avg_color": avgColor,
    "alt": alt,
    "photographer": photographer,
    "photographer_url": photographerUrl,
    "id": id,
    "url": url,
    "photographer_id": photographerId,
    "liked": liked,
    "height": height,
  };
}