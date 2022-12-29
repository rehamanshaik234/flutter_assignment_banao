import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class LessonsList extends StatelessWidget {
  const LessonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding:  EdgeInsets.only(right: 16.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.sp),
          child: Card(
            child: Container(
              width: 242.w,
              height: 280.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/events.jpeg',height: 140.h,width: 242.w,alignment: Alignment.center,fit: BoxFit.cover,),
                    SizedBox(height: 16.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 8.h),
                      child: Text('BABY CARE',style: TextStyle(color: Colors.blue,fontSize:12.sp ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 15.h,right: 12.w),
                      child: Text('UnderStanding of human\n'
                          'behaviour',style: GoogleFonts.inter(color: Colors.black,fontSize:15.sp,fontWeight: FontWeight.w700)//TextStyle(color: Colors.black,fontSize:16.sp,fontWeight: FontWeight.w700,fontStyle: GoogleFonts.inter() ),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 0.h),
                      child: Row(
                        children: [
                          Text('3 mins',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500),),
                          Spacer(),
                          Padding(
                            padding:  EdgeInsets.only(right: 12.w),
                           child: Icon(Icons.shopping_basket,color: Colors.grey,size: 20.sp,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),
        ),
      );
    },
      itemCount: 4,
      shrinkWrap: true,
      scrollDirection:Axis.horizontal,
    );
  }
}
