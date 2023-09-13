import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade300,
            Colors.grey.shade800,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            ModalRoute.of(context)?.settings.name ?? "",
            style: textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
