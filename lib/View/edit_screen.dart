import 'package:blood_donation/View/add_manager_screen.dart';
import 'package:blood_donation/View/manager_profile.dart';
import 'package:blood_donation/custom_wigdets/elevated_custom.dart';
import 'package:blood_donation/custom_wigdets/textformfield_custom_wigdet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blood_donation/constants/const.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                              SizedBox(width: 20.w),
                              Text(
                                editDonordetails,
                                style: tStyle(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                   TextFormFieldWigdet(
                       hintText: ('TYPE yOUR NAME'), initialText: ('FULL NAME')),
                    SizedBox(height: 30.h),
                    TextFormFieldWigdet(
                        hintText: ('TYPE YOUR AREA'), initialText: ('AREA')),
                    SizedBox(height: 30.h),
                    TextFormFieldWigdet(
                        hintText: ('TYPE PHONE NUMBER'), initialText: ('PHONE')),
                    SizedBox(height: 30.h),
                    TextFormFieldWigdet(
                        hintText: ('02/12/2022'), initialText: ('LAST DONATION DATE')),
                    SizedBox(height: 40.h),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Text('BLOOD GROUPS',style: mStyle(),),
                        ),
                      ],
                    ),

                    SizedBox(height: 190.h),
                    ElevatedCustom(
                        txt: ('SAVE'),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddManager()));
                        },
                        width: 245,
                        height: 48,
                    )

                  ]
              ),
            )
        )
    );
  }
}