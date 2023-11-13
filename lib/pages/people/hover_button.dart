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
  Color initialColor = Colors.blueGrey.shade50;
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
              initialColor = colorScheme.onPrimaryContainer;
            });
          } else {
            setState(() {
              scale = 1.0;
              elevation = 1.0;
              initialColor = colorScheme.primaryContainer;
            });
          }
        },
        child: Transform.scale(
          scale: scale,
          child: Card(
            color: initialColor,
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
