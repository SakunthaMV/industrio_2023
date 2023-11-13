import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final Widget body;
  final Function() onTap;
  const HoverButton({
    super.key,
    required this.body,
    required this.onTap,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  double scale = 1.0;
  double elevation = 1.0;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: widget.onTap,
        onHover: (value) {
          if (value) {
            setState(() {
              scale = 1.075;
              elevation = 4.0;
            });
          } else {
            setState(() {
              scale = 1.0;
              elevation = 1.0;
            });
          }
        },
        child: AnimatedScale(
          duration: const Duration(milliseconds: 150),
          scale: scale,
          child: Card(
            color: colorScheme.tertiary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: elevation,
            child: widget.body,
          ),
        ),
      ),
    );
  }
}
