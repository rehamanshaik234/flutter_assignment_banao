import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';

import '../date_converter.dart';
class ProgramsList extends StatefulWidget {
  const ProgramsList({Key? key}) : super(key: key);

  @override
  State<ProgramsList> createState() => _ProgramsListState();
}

class _ProgramsListState extends State<ProgramsList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return lessonData.isEmpty? Center(child: CircularProgressIndicator(color: Colors.blue,strokeWidth: 3,)): ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding:  EdgeInsets.only(right: 16.w),
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
                  Image.asset('assets/dummy.jpeg',height: 140.h,width: 242.w,alignment: Alignment.center,fit: BoxFit.fill,),
                  SizedBox(height: 16.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w,bottom: 8.h),
                    child: Text('${programData[index]['category']}',style:GoogleFonts.inter(color: Colors.blue,fontSize:12.sp,fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w,bottom: 15.h,right: 12.w),
                    child: Text('${programData[index]['name']}',style:  GoogleFonts.inter(color: Colors.black,fontSize:15.sp,fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w,bottom: 0.h),
                    child: Text("${programData[index]["lesson"]} Lessons",style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500),),
                  ),

                ],
              ),
            ),

          ),
        ),
      );
    },
      itemCount: programData.length,
      shrinkWrap: true,
      scrollDirection:Axis.horizontal,
    );
  }
}
