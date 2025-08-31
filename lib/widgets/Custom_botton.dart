import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  String? text;
  Function()? onTap;
  CustomBotton({Key? key, this.text = '', this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        height: 45,
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
