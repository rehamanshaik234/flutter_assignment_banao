import 'package:flutter/material.dart';
import 'package:flutter_banao/views/date_converter.dart';
import 'package:flutter_banao/views/screens/NaviationPage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/splashimage.jpg'),
      ),
    );
  }
}
