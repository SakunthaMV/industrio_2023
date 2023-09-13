import 'package:flutter/material.dart';

import '../../constants.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        if (ModalRoute.of(context)?.settings.name != "/") {
          Navigator.pushReplacementNamed(context, '/');
        }
      },
      child: Image.asset(logo),
    );
  }
}
