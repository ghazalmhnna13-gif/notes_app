import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final double? height;
  final int? maxLines;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.height,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPrimaryColor,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        onChanged: onChanged,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kPrimaryColor, height: height),
          enabledBorder: outLineInputBorderMethod(),
          focusedBorder: outLineInputBorderMethod(color: kPrimaryColor),
        ));
  }

  OutlineInputBorder outLineInputBorderMethod({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
