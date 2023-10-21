
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';
import '../custom_wigdets/elevated_custom.dart';
import 'otp_screen.dart';

class PhoneNumScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  PhoneNumScreen({Key? key}) : super(key: key);

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
                                vertical: 33.0, horizontal: 100),
                            child: Text(
                              phone_num,
                              style: loginTStyle(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Text(authentication, style: authenticatonStyle()),
                          ),

                          SizedBox(height: 50.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(phone_num, style: mStyle()),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              controller: phoneController,
                              obscureText: true, // Hide password text
                              decoration: InputDecoration(
                                hintText: type_your_phone,
                                hintStyle: sStyle(),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 230.h),
            ElevatedCustom(
                txt: send, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
            },
                width: 254.w,
                height: 48.h),
            SizedBox(height: 270.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Didnt_OTP,style: sStyle(),),
                Text(resend,style: medStyle(),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
