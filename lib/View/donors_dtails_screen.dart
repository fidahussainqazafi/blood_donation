import 'package:blood_donation/View/edit_screen.dart';
import 'package:blood_donation/custom_wigdets/elevated_custom.dart';
import 'package:blood_donation/custom_wigdets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blood_donation/constants/const.dart';

class DonorsDetailScreen extends StatelessWidget {
  const DonorsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_rounded, color: wColor),
                      SizedBox(width: 20.w),
                      Text(
                        donorDetails,
                        style: tStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 40.h),
            TextFieldWigdet(txt: doe),
            SizedBox(height: 40,),
            TextFieldWigdet(txt: ('Location')),
            SizedBox(height: 40.h),
            TextFieldWigdet(txt: ('+923086785745')),
            SizedBox(height: 40,),
            TextFieldWigdet(txt: ('02/12/2022')),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Blood Group',style: mStyle(),),
                  ElevatedCustom(
                      txt: o,
                      onPressed: (){},
                      width: 50,
                      height: 23),
                ],
              ),
            ),
            
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedCustom(
                      txt: ('call'),
                      onPressed: (){},
                      width: 147,
                      height: 48),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => EditScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.red,
                      minimumSize: Size(147, 48),
                      side: BorderSide(color: Colors.red),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Border radius
                      ),
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: mColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




