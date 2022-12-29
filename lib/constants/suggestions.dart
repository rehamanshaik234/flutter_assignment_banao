import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Suggestion extends StatelessWidget {
  late String title1;
  late String title2;
  late Icon icon1;
  late Icon icon2;


  Suggestion({required this.title1, required this.title2, required this.icon1, required this.icon2,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width:160.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child:
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 24.w,top: 15.5.h,bottom: 15.h),
                      child: icon1//Icon(Icons.help,color: Colors.blue,size: 18.sp,),
                    ),
                    SizedBox(width: 16.w,),
                    Padding(padding: EdgeInsets.only(top: 14.h,bottom: 14.h),
                    child: Text(title1,style: GoogleFonts.inter(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.blue),)
                     )
                  ]
                ),
              ),
        ),
        SizedBox(width: 8.w,),
        Container(
          height: 48.h,
          width:160.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child:
          Expanded(
            child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 24.w,top: 15.5.h,bottom: 15.h),
                    child: icon2//Icon(Icons.help,color: Colors.blue,size: 18.sp,),
                  ),
                  SizedBox(width: 16.w,),
                  Padding(padding: EdgeInsets.only(top: 14.h,bottom: 14.h),
                      child: Text(title2,style: GoogleFonts.inter(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.blue),)
                  )
                ]
            ),
          ),
        ),
      ],

    );
  }
}
