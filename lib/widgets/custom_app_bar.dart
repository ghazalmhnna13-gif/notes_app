import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomAppBar({super.key, required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 25),
          ),
          customSearchIcon(icon: icon,)
        ],
      ),
    );
  }
}
