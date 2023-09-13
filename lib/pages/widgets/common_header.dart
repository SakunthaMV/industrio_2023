import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double width = MediaQuery.of(context).size.width;
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
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ModalRoute.of(context)?.settings.name ?? "",
              style: textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            SizedBox(
              width: width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
