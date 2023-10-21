
import 'package:blood_donation/View/donors_screen.dart';
import 'package:blood_donation/View/phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';
import '../constants/const.dart';
import '../constants/images.dart';
import '../constants/styling.dart';
import '../custom_wigdets/elevated_custom.dart';

class Login extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: mColor,
              width: 428.w,
              height: 300.h,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none, // Added clipBehavior here
                children: [
                  Container(
                    width: 230.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: wColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        Image.asset(imLogo, width: 83.w, height: 83.h),
                        Text(
                          'zindagi',
                          style: TextStyle(fontSize: 24.sp, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 193.h,
                    left: 28.w,
                    right: 28.w,
                    child: Container(
                      width: 373.w,
                      height: 365.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4.r,
                            blurRadius: 4.r,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 33.0, horizontal: 140),
                            child: Text(
                              login,
                              style: loginTStyle(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(phone, style: mStyle()),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: type_your_phone,
                                hintStyle: sStyle(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(password, style: mStyle()),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: true, // Hide password text
                              decoration: InputDecoration(
                                hintText: type_password,
                                hintStyle: sStyle(),
                              ),
                            ),
                          ),
                          SizedBox(height: 63.h),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 230.h),
            ElevatedCustom(
                txt: signin, onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneNumScreen()));
            },
                width: 254.w,
                height: 48.h),

          ],
        ),
      ),
    );
  }
}
