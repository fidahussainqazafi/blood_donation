import 'package:blood_donation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';
import '../custom_wigdets/elevated_custom.dart';
import '../custom_wigdets/textformfield_custom_wigdet.dart';
class SignUpScrren extends StatefulWidget {
  const SignUpScrren({Key? key}) : super(key: key);

  @override
  State<SignUpScrren> createState() => _SignUpScrrenState();
}

class _SignUpScrrenState extends State<SignUpScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wColor,
        body:  SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 428.w,
                            height: 100.h,
                            color: mColor,
                            child: Stack(

                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  width: 219.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: wColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20.0.sp),
                                      bottomLeft: Radius.circular(20.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 50),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_back_ios_new_rounded,
                                    color: wColor),
                                SizedBox(width: 50.w),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 200.h,
                        left: 28.w,
                        right: 28.w,
                        child: Container(
                          width: 393.w,
                          height: 375.h,
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
                                  ('SIGN UP'),
                                  style: loginTStyle(),
                                ),
                              ),
                              TextFormFieldWigdet(
                                initialText: ('EMAIL'),
                                  hintText: ('TYPE YOUR EMAIL')),


                              SizedBox(height: 30.h),

                              TextFormFieldWigdet(
                                initialText: password,
                                  hintText: type_password),
                              SizedBox(height: 30.h),

                              TextFormFieldWigdet(
                                initialText: ('PIN CODE'),
                                  hintText: ('TYPE YOUR PIN CODE')),


                            ],
                          ),
                        ),
                      ),


                      ElevatedCustom(
                          txt: ('LOGOUT'), onPressed: (){
                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneNumScreen()));
                      },
                          width: 254.w,
                          height: 48.h),
                    ]
                )
            )
        )
    );
  }
}
