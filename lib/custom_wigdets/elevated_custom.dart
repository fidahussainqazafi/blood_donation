
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';
class ElevatedCustom extends StatelessWidget {
  final String txt;
  final double width, height;
  final VoidCallback onPressed;


  const ElevatedCustom({
    Key? key, required this.txt,required this.onPressed,required this.width,required this.height,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,height: height,
      child: ElevatedButton(

        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // primary: mColor
            backgroundColor: mColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
            )
        ),
        child: Text(txt,style: elevatedStyle(),),

      ),
    );
  }
}
