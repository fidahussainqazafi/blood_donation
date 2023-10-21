import 'package:blood_donation/View/donors_dtails_screen.dart';
import 'package:blood_donation/constants/colors.dart';
import 'package:blood_donation/constants/const.dart';
import 'package:blood_donation/custom_wigdets/donor_details_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DonorScreen extends StatelessWidget {
  const DonorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
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
                      )
                    ),

                  ),
                ],

              ),

            ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
               child: Row(
                children: [
                  InkWell(
                      onTap:(){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DonorsDetailScreen()));


                     },
                      child: Icon(Icons.arrow_back_ios_new_rounded,color: wColor,)),
                  SizedBox(width: 20.w,),
                  Text(allDonor,style: tStyle(),),

                ],
            ),
             ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Column(
               children: [
                 SizedBox(height: 120.h),
                DonorDetail(),
                 SizedBox(height: 20.h),
                 DonorDetail(),
                 SizedBox(height: 20.h),
                 DonorDetail(),
                 SizedBox(height: 20.h),
                 DonorDetail(),
                 SizedBox(height: 20.h),
                 DonorDetail(),


               ],
             ),
           ),
          ],
        ),
      ),

    );
  }
}
