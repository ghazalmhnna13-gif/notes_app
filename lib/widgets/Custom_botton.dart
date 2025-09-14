import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String? text;
  final Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  final bool inAsyncCall;
  const CustomBotton(
      {Key? key,
      this.text = '',
      this.onTap,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.inAsyncCall = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(10)),
        height: 45,
        child: Center(
          child:inAsyncCall ==false ? Text(
            text!,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ):const CircularProgressIndicator()
        ),
      ),
    );
  }
}
