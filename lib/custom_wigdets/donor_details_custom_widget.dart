import 'package:blood_donation/custom_wigdets/elevated_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/const.dart';

class DonorDetail extends StatelessWidget {
  const DonorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372.w,
      height: 135.h,
      decoration: BoxDecoration(
        color: wColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: mColor,
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 174.w,
                height: 135.h,
                decoration: BoxDecoration(
                  color: dColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.r),
                    topRight: Radius.circular(68.r),
                    bottomLeft: Radius.circular(68),
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(doe, style: medStyle()),
                          SizedBox(height: 4), // Adjust spacing
                          Text(city, style: medStyle()),
                        ],
                      ),
                    ),
                    SizedBox(height: 9),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Text(number, style: medStyle()),
                    ),
                    SizedBox(height: 9),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Text(lastDonate, style: medStyle()),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 9,
            right: 9,
            bottom: 85,

            child: ElevatedCustom(
                txt: (o),
                onPressed: (){},
                width: 50,
                height: 20),
          ),

        ],

      ),
    );
  }
}
