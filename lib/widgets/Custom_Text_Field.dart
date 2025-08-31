import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;
  TextInputType? keyboardType;
  double? height;

  CustomTextField(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: KPrimaryColor,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: KPrimaryColor, height: height),
          enabledBorder: outLineInputBorderMethod(),
          focusedBorder: outLineInputBorderMethod(color: KPrimaryColor),
        ));
  }

  OutlineInputBorder outLineInputBorderMethod({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
