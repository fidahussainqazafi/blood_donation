import 'dart:async';

import 'package:blood_donation/View/signin_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';
import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(imLogo,width: 209.w,height: 209.h)),
          SizedBox(height: 9.h),
          Center(child: Text(zindagi,style: zTStyle(),)),

        ],
      ),
    );
  }
}
