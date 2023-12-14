import 'package:flutter/material.dart';
import 'package:tiktok/commons/app_images.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Positioned(
          bottom: 150,
          right: 10,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
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
    );
  }
}
