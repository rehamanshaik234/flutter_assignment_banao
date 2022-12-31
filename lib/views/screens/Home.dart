import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_banao/views/date_converter.dart';
import 'package:flutter_banao/views/screens/ModelProgram.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_urls/app_urls.dart';
import '../constants/events_and-experiemceslist.dart';
import '../constants/lessons list.dart';
import '../constants/programslist.dart';
import '../constants/suggestions.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    void getPrograms() async {
    final response= await http.get(Uri.parse(AppUrls.programs));
    final body=json.decode(response.body);
    setState(() {
      programData=body["items"];
    });
    print(programData);
    dateChanger();
  }
    void getLessons() async {
    final response= await http.get(Uri.parse(AppUrls.lessons));
    final body=json.decode(response.body);
    setState(() {
      lessonData=body["items"];
    });

    print(lessonData);
  }
  @override
  void initState() {
      getPrograms();
      getLessons();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return //lessonData.isEmpty? Center(
      //child: CircularProgressIndicator(
        //color: Colors.blue,strokeWidth: 3,
      //),
    //):
    Padding(
      padding:  EdgeInsets.all(0.sp,),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 16.h,left: 16.sp),
              child: Text("Hello, Priya!",style:GoogleFonts.lora(fontWeight: FontWeight.w500,fontSize: 20.sp)),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16.sp),
              child: Text("What do you wanna learn today?",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 12.sp,color: Colors.grey),),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding:  EdgeInsets.only(top: 16.h,left: 16.w,right: 16.w),
              child: Suggestion(title1: 'Program',title2: "Get Help?",icon1:
              Icon(Icons.dashboard_rounded,color: Colors.blue,size: 18.sp,), icon2: Icon(Icons.help,color: Colors.blue,size: 18.sp,),),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding:  EdgeInsets.only(bottom: 32.h,left: 16.w,right: 16.w),
              child: Suggestion(title1: 'Learn',title2: "DD Tracker",icon1:
              Icon(Icons.laptop_chromebook_outlined,color: Colors.blue,size: 18.sp,), icon2: Icon(Icons.track_changes,color: Colors.blue,size: 18.sp,),),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(right: 16.w,left: 16.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text('Programs for you',style:GoogleFonts.lora(fontWeight: FontWeight.w500,fontSize: 18.sp),),
                    Spacer(),
                    Text('view all',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500)),
                    SizedBox(width: 8.w,),
                    Icon(Icons.arrow_forward,color: Colors.grey,size: 13.w,),

                  ]
              ),
            ),
            SizedBox(height: 24.h,),

            Padding(
              padding:  EdgeInsets.only(left: 16.w),
              child: SizedBox(
                height: 280.h,
                width: double.infinity,
                child: ProgramsList(),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 16.w,left: 16.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text('Events and Experiences',style: GoogleFonts.lora(fontWeight: FontWeight.w500,fontSize: 18.sp)),
                    Spacer(),
                    Text('view all',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500)),
                    SizedBox(width: 8.w,),
                    Icon(Icons.arrow_forward,color: Colors.grey,size: 13.w,),

                  ]
              ),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16.w),
              child: SizedBox(
                height: 290.h,
                width: double.infinity,
                child: EventsList(),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 16.w,left: 16.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text('Lessons for you',style: GoogleFonts.lora(fontWeight: FontWeight.w500,fontSize: 18.sp)),
                    Spacer(),
                    Text('view all',style: GoogleFonts.inter(color: Colors.grey,fontSize:12.sp,fontWeight: FontWeight.w500)),
                    SizedBox(width: 8.w,),
                    Icon(Icons.arrow_forward,color: Colors.grey,size: 13.w,),

                  ]
              ),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16.w),
              child: SizedBox(
                height: 280.h,
                width: double.infinity,
                child: LessonsList(),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
