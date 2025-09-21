import 'package:flutter/cupertino.dart';
import 'package:music_notes_player_app_setup/widgets/custom_color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ColorItem();
          }),
    );
  }
}