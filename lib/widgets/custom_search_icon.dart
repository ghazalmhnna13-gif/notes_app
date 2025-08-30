
import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.grey.withValues(
            alpha: .1,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: const Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}