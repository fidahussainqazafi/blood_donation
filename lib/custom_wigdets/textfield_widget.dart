import 'package:blood_donation/constants/const.dart';
import 'package:flutter/material.dart';
class TextFieldWigdet extends StatelessWidget {
  final String txt;
  const TextFieldWigdet({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: txt,
          hintStyle: mStyle(),
        ),
      ),
    );
  }
}
