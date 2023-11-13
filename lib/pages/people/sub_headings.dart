import 'package:flutter/material.dart';

class SubHeadings extends StatelessWidget {
  final String text;
  const SubHeadings(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RichText(
        text: TextSpan(
          style: textTheme.displaySmall?.copyWith(
            wordSpacing: 1.5,
            letterSpacing: 1.1,
          ),
          children: [
            TextSpan(
              text: '${text.split(' ').first} ',
            ),
            TextSpan(
              text: text.split(' ').last,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
