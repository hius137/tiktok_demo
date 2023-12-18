import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/commons/app_images.dart';

class ImageWidget extends StatelessWidget {
  final String imgUrl;

  const ImageWidget({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                fit: BoxFit.cover,
              ),
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
          ],
        ),
      ),
    );
  }
}
