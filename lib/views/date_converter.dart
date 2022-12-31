import 'package:flutter/material.dart';

import 'package:jiffy/jiffy.dart';
List programData=[];
List lessonData=[];
List datePicker=[];
void dateChanger(){
  for (var element in programData) {
    String date= element['createdAt'].toString();
    Characters dater= date.characters;
    String dateFormat='';
    for(int i=0;i<10;i++){
      dateFormat+=dater.elementAt(i);
    }
    var a = Jiffy(dateFormat).MMMMEEEEd;
    final dates= a.split(' ');
    String finalDate='';
    for(int i=0;i<dates.length;i++){
      if(dates[i].length>3){
        finalDate+="${dates[i].substring(0,3)} ";
      }else{
        finalDate+=dates[i];
      }
    }
    datePicker.add(finalDate);
  }
}