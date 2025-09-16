import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const customSearchIcon({super.key, required this.icon,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.grey.withValues(
              alpha: .1,
            ),
            borderRadius: BorderRadius.circular(8)),
        child:  Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
