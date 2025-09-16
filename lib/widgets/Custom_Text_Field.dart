import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Function(String?)? onSaved;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final double? height;
  final int? maxLines;
  final void Function(String)? onChanged;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.onSaved,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.height,
      this.maxLines = 1,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'this feild is required';
          } else {
            return null;
          }
        },
        cursorColor: kPrimaryColor,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        onSaved: onSaved,
        onChanged: onChanged,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: kPrimaryColor, height: height),
            enabledBorder: outLineInputBorderMethod(),
            focusedBorder: outLineInputBorderMethod(color: kPrimaryColor),
            border: outLineInputBorderMethod()));
  }

  OutlineInputBorder outLineInputBorderMethod({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
