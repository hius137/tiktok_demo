import 'package:tiktok/model/response/video_response.dart';

class VideoFile {
  VideoFile({
    required this.fileType,
    required this.width,
    this.fps,
    required this.link,
    required this.id,
    required this.quality,
    required this.height,
  });

  FileType fileType;
  int width;
  double? fps;
  String link;
  int id;
  Quality quality;
  int height;

  factory VideoFile.fromJson(Map<dynamic, dynamic> json) => VideoFile(
    fileType: fileTypeValues.map[json["file_type"]]!,
    width: json["width"],
    fps: json["fps"]?.toDouble(),
    link: json["link"],
    id: json["id"],
    quality: qualityValues.map[json["quality"]]!,
    height: json["height"],
  );

  Map<dynamic, dynamic> toJson() => {
    "file_type": fileTypeValues.reverse[fileType],
    "width": width,
    "fps": fps,
    "link": link,
    "id": id,
    "quality": qualityValues.reverse[quality],
    "height": height,
  };
}