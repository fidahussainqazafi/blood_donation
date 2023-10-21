import 'package:blood_donation/View/manager_profile.dart';
import 'package:blood_donation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';
import '../custom_wigdets/elevated_custom.dart';
import '../custom_wigdets/textformfield_custom_wigdet.dart';
class AddManager extends StatefulWidget {
  const AddManager({Key? key}) : super(key: key);

  @override
  State<AddManager> createState() => _AddManagerState();
}

class _AddManagerState extends State<AddManager> {
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
                                  ('ADD MANAGER'),
                                  style: loginTStyle(),
                                ),
                              ),
                              TextFormFieldWigdet(
                                initialText: ('NAME'),
                                  hintText: ('TYPE YOUR NAME')),


                              SizedBox(height: 30.h),

                              TextFormFieldWigdet(
                                initialText: ('AREA'),
                                  hintText: ('TYPE YOUR AREA')),
                              SizedBox(height: 30.h),

                              TextFormFieldWigdet(
                                initialText: ('PHONE'),
                                  hintText: type_your_phone),


                            ],
                          ),
                        ),
                      ),


                      ElevatedCustom(
                          txt: ('SAVE'), onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ManagerProfile()));
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
