import 'package:flutter/material.dart';
import 'package:flutter_banao/views/date_converter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class EventsList extends StatefulWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return lessonData.isEmpty?Center(child: CircularProgressIndicator(
      color: Colors.blue,strokeWidth: 3,
    )):
    ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding:  EdgeInsets.only(right: 16.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.sp),
          child: Card(
            child: Container(
              width: 242.w,
              height: 290.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/events.jpeg',height: 140.h,width: 242.w,alignment: Alignment.center,fit: BoxFit.fill,),
                    SizedBox(height: 16.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 8.h),
                      child: Text('${programData[index]['category']}',style:  GoogleFonts.inter(color: Colors.blue,fontSize:12.sp,fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 15.h),
                      child: Text('${programData[index]['name']}',style: GoogleFonts.inter(color: Colors.black,fontSize:15.sp,fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,bottom: 0.h),
                      child: Row(
                        children: [
                          Text('${datePicker[index]}',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500),),
                          Spacer(),
                          Padding(
                            padding:  EdgeInsets.only(right: 12.w),
                            child: Container(
                              height: 30.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(20.sp)
                              ),
                              child: Center(
                                child: Text('Book',style: GoogleFonts.inter(color: Colors.blue,fontWeight: FontWeight.w600
                                ,fontSize: 12.sp),),
                              ),
                            ),
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
      itemCount: programData.length,
      shrinkWrap: true,
      scrollDirection:Axis.horizontal,
    );
  }
}
