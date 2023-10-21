import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'View/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(428, 926),
        builder: (context,child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            theme: ThemeData(

            ),
            home: SplashScreen(),
          );
        }
    );
  }
}

//    1