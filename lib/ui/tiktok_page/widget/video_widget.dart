import 'package:flutter/material.dart';
import 'package:tiktok/commons/app_images.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;

  const VideoWidget({
    super.key,
    required this.videoUrl,
  });

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _videoPlayerController;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((value) {
            if (mounted) {
              _videoPlayerController.play();
              _videoPlayerController.setVolume(1);

              Future.delayed(const Duration(seconds: 1)).then(
                (value) => setState(
                  () {
                    isLoading = false;
                  },
                ),
              );
            }
          });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          isLoading
              ? Container(
                  color: Colors.blueGrey,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
              : VideoPlayer(
                  _videoPlayerController,
                ),
          Positioned(
            bottom: 150,
            right: 10,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        width: 60,
                        height: 60,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            AppImages.imgSiuuuuu,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Image.asset(
                          AppImages.icPlus,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    AppImages.icHeartWhite,
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    AppImages.icComment,
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    AppImages.icShare,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cai Gia Cua Su Co Don',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Lamdt',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
