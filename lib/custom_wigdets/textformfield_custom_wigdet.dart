import 'package:flutter/material.dart';

import '../constants/const.dart';

class TextFormFieldWigdet extends StatefulWidget {
  final String hintText;
  final String? initialText; // Make initialText optional by using nullable String

  const TextFormFieldWigdet({
    Key? key,
    required this.hintText,
    this.initialText, // Make initialText optional by using nullable String
  }) : super(key: key);

  @override
  _TextFormFieldWigdetState createState() => _TextFormFieldWigdetState();
}

class _TextFormFieldWigdetState extends State<TextFormFieldWigdet> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialText ?? ''); // Handle null initialText
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.initialText != null) // Display initial text if available
            Text(widget.initialText!, style: mStyle()),

          TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: sStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
