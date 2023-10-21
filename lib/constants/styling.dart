import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


TextStyle zTStyle ({Color textColor = wColor}){

  return GoogleFonts.quando(
      fontSize: 48.sp,
      fontWeight: FontWeight.w400

  );
}

TextStyle loginTStyle ({Color textColor = bColor}){

  return GoogleFonts.roboto(
      fontSize: 20.sp,
      fontWeight: FontWeight.w400

  );
}

TextStyle mStyle ({Color textColor = bColor}){

  return GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400

  );
}

TextStyle sStyle ({Color textColor = bColor}){

  return GoogleFonts.roboto(
      fontSize: 8.sp,
      fontWeight: FontWeight.w400

  );
}

TextStyle elevatedStyle ({Color textColor = wColor}){

  return GoogleFonts.roboto(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700

  );
}
TextStyle authenticatonStyle ({Color textColor = bColor}){

  return GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400

  );
}
TextStyle medStyle ({Color textColor = bColor}){

  return GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400

  );
}

TextStyle tStyle ({Color textColor = wColor}){

  return GoogleFonts.roboto(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xffFFFFFF)

  );
}



