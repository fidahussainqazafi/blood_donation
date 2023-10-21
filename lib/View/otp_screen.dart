import 'package:blood_donation/View/donors_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/const.dart';
import '../custom_wigdets/elevated_custom.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> otpControllers = List.generate(4, (index) => TextEditingController());

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
                clipBehavior: Clip.none,
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
                              vertical: 33.0,
                              horizontal: 70,
                            ),
                            child: Text(
                              phone_verifi,
                              style: loginTStyle(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 80.0),
                            child: Text(otp, style: authenticatonStyle()),
                          ),
                          SizedBox(height: 50.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(4, (index) {
                                return Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextField(
                                    controller: otpControllers[index],
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(fontSize: 24.sp),
                                    decoration: InputDecoration(
                                      counterText: '', // Hide the character count
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      if (value.length == 1 &&
                                          index < otpControllers.length - 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                  ),
                                );
                              }),
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
              txt: verify,
              onPressed: () {

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => DonorScreen()));
              },
              width: 254.w,
              height: 48.h,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(validate, style: sStyle()),
                SizedBox(width: 3.w),
                Text('(2:00)', style: medStyle()),
              ],
            )
          ],
        ),
      ),
    );
  }
}


