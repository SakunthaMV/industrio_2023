import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:industrio_2023/constants.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return ImageSlideshow(
      width: width,
      height: width * 0.336,
      isLoop: true,
      autoPlayInterval: showDuration,
      indicatorRadius: width * 0.004,
      indicatorPadding: width * 0.01,
      indicatorBottomPadding: width * 0.01,
      children: List.generate(
        noOfImages,
        (index) => TweenAnimationBuilder(
          tween: Tween(begin: 1.0, end: 1.1),
          duration: const Duration(milliseconds: showDuration * 2),
          builder: (context, value, _) {
            return Transform.scale(
              scale: value,
              child: Image.asset('images/slide_show/${index + 1}.jpg'),
            );
          },
        ),
      ),
    );
  }
}
