import 'package:flutter/material.dart';
import 'package:flutter_banao/views/date_converter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class LessonsList extends StatelessWidget {
   LessonsList({Key? key}) : super(key: key);
  late List data;
  @override
  Widget build(BuildContext context) {
    return lessonData.isEmpty? Center(child:CircularProgressIndicator(
      color: Colors.blue,strokeWidth: 3,
    ),) :ListView.builder(itemBuilder: (context,index){
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w,bottom: 8.h),
                        child: Text('${lessonData[index]['category']}',style: TextStyle(color: Colors.blue,fontSize:12.sp ),),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w,bottom: 15.h,right: 12.w),
                        child: Text('${lessonData[index]['name']}',style: GoogleFonts.inter(color: Colors.black,fontSize:15.sp,fontWeight: FontWeight.w700)//TextStyle(color: Colors.black,fontSize:16.sp,fontWeight: FontWeight.w700,fontStyle: GoogleFonts.inter() ),
                            ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w,bottom: 0.h),
                        child: Row(
                          children: [
                            Text('${lessonData[index]['duration'].toString()}',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500),),
                            Spacer(),
                            Padding(
                              padding:  EdgeInsets.only(right: 12.w),
                             child: Icon(lessonData[index]['locked']?Icons.lock_open_outlined: Icons.lock,color: Colors.grey,size: 20.sp,),
                            )
                          ],
                        ),
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
      itemCount: lessonData.length,
      shrinkWrap: true,
      scrollDirection:Axis.horizontal,
    );
  }
}
