import 'package:flutter/material.dart';
import 'package:industrio_2023/constants.dart';
import 'package:industrio_2023/models/responsive_layout.dart';
import 'package:industrio_2023/pages/home/home_content.dart';
// import 'package:industrio_2023/pages/home/slideshow.dart';
import 'package:industrio_2023/pages/widgets/custom_appbar.dart';
import 'package:industrio_2023/pages/widgets/common_footer.dart';
import 'package:industrio_2023/pages/widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final double width = MediaQuery.of(context).size.width;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: colorScheme.background,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(children: [
          // SlideShow(),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipper: BackClipperPath(),
                child: Container(
                  color: Colors.red,
                  child: Opacity(
                    opacity: 0.0,
                    child: Image.asset(homeBackground),
                  ),
                ),
              ),
              ClipPath(
                clipper: ImageClipperPath(),
                child: Image.asset(homeBackground),
              ),
              Positioned(
                top: width * 0.1 > 100.0 ? width * 0.1 : 100.0,
                child: SizedBox(
                  width: width,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Welcome to a symposium where ideas turn into solutions,'
                      '\nand solutions shape industries.',
                      style: textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 500.0,
          ),
          // const HomeContent(),
          // const HomeContent(),
          const CommonFooter(),
        ]),
      ),
      drawer: const ResponsiveLayout(
        mobile: NavDrawer(),
        tablet: NavDrawer(),
      ),
    );
  }
}

class ImageClipperPath extends CustomClipper<Path> {
  ImageClipperPath();

  @override
  Path getClip(Size size) {
    final double w = size.width;
    final double h = size.height * 0.975;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h / 2);
    path.quadraticBezierTo(w, h, w / 2, h);
    path.quadraticBezierTo(0, h, 0, h / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class BackClipperPath extends CustomClipper<Path> {
  BackClipperPath();

  @override
  Path getClip(Size size) {
    final double w = size.width;
    final double h = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h / 2);
    path.quadraticBezierTo(w, h, w / 2, h);
    path.quadraticBezierTo(0, h, 0, h / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
