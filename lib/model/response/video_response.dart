
import 'package:tiktok/model/entity/video_file_entity.dart';

class VideoEntity {
  VideoEntity({
    required this.duration,
    required this.image,
    required this.width,
    required this.videoFiles,
    required this.videoPictures,
    required this.id,
    required this.user,
    required this.url,
    required this.height,
    required this.tags,
  });

  int duration;
  String image;
  int width;
  List<VideoFile> videoFiles;
  List<VideoPicture> videoPictures;
  int id;
  User user;
  String url;
  int height;
  List<dynamic> tags;

  factory VideoEntity.fromJson(Map<dynamic, dynamic> json) => VideoEntity(
    duration: json["duration"],
    image: json["image"],
    width: json["width"],
    videoFiles: List<VideoFile>.from(json["video_files"].map((x) => VideoFile.fromJson(x))),
    videoPictures: List<VideoPicture>.from(json["video_pictures"].map((x) => VideoPicture.fromJson(x))),
    id: json["id"],
    user: User.fromJson(json["user"]),
    url: json["url"],
    height: json["height"],
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
  );

  Map<dynamic, dynamic> toJson() => {
    "duration": duration,
    "image": image,
    "width": width,
    "video_files": List<dynamic>.from(videoFiles.map((x) => x.toJson()).toList()),
    "video_pictures": List<dynamic>.from(videoPictures.map((x) => x.toJson())),
    "id": id,
    "user": user.toJson(),
    "url": url,
    "height": height,
    "tags": List<dynamic>.from(tags.map((x) => x)),
  };
}

class User {
  User({
    required this.name,
    required this.id,
    required this.url,
  });

  String name;
  int id;
  String url;

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
    name: json["name"],
    id: json["id"],
    url: json["url"],
  );

  Map<dynamic, dynamic> toJson() => {
    "name": name,
    "id": id,
    "url": url,
  };
}

enum FileType { VIDEO_MP4 }

enum Quality { HD, SD }


class VideoPicture {
  VideoPicture({
    required this.nr,
    required this.id,
    required this.picture,
  });

  int nr;
  int id;
  String picture;

  factory VideoPicture.fromJson(Map<dynamic, dynamic> json) => VideoPicture(
    nr: json["nr"],
    id: json["id"],
    picture: json["picture"],
  );

  Map<dynamic, dynamic> toJson() => {
    "nr": nr,
    "id": id,
    "picture": picture,
  };
}

final fileTypeValues = EnumValues({
  "video/mp4": FileType.VIDEO_MP4
});


final qualityValues = EnumValues({
  "hd": Quality.HD,
  "sd": Quality.SD
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}