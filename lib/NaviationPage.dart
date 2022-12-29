import 'package:flutter/material.dart';
import 'package:flutter_banao/constants/events_and-experiemceslist.dart';
import 'package:flutter_banao/constants/lessons%20list.dart';
import 'package:flutter_banao/Home.dart';
import 'package:flutter_banao/constants/programslist.dart';
import 'package:flutter_banao/constants/suggestions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  List pages=[
    MainPage(),
    Container(color:Colors.white,),
    Container(color:Colors.green,),
    Container(color:Colors.blue,),
    Container(color:Colors.red,),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back,color: Colors.grey,size: 20.sp,),
          actions: [
            IconButton(onPressed: (){
            }, icon: Icon(Icons.chat_outlined,color:Colors.grey,
              size: 20.sp,

            ),),
            IconButton(onPressed: (){
            }, icon: Icon(Icons.notifications_none_outlined,color:Colors.grey,
              size: 20.sp,

            ),)
          ],
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 18.sp,),backgroundColor: Colors.white,label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.laptop_chromebook_rounded,size: 18.sp,),backgroundColor: Colors.white,label: "Learn"),
            BottomNavigationBarItem(icon: Icon(Icons.space_dashboard_outlined,size: 18.sp,),backgroundColor: Colors.white,label: "Hub"),
            BottomNavigationBarItem(icon: Icon(Icons.messenger_outline,size: 18.sp,),backgroundColor: Colors.white,label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 18.sp,),backgroundColor: Colors.white,label: "Profile"),

          ],
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: GoogleFonts.inter(color: Colors.blue,fontSize:16.sp,fontWeight: FontWeight.w600),
          unselectedLabelStyle:GoogleFonts.inter(color: Colors.grey,fontSize:16.sp,fontWeight: FontWeight.w500),
          selectedIconTheme: IconThemeData(size: 16.sp),
          unselectedIconTheme: IconThemeData(size: 16.sp),
          showSelectedLabels: true,
          onTap: (index){
            setState(() {
              _selectedIndex=index;
            });
          },
          iconSize: 24,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
