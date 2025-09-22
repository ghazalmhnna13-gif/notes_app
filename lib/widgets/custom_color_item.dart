import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;
  const ColorItem({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 38,
              child: CircleAvatar(
                backgroundColor: color,
                maxRadius: 35,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              maxRadius: 38,
            ),
    );
  }
}
