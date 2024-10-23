import 'package:daily_tasks/23-10-24/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), (){
      Get.to(HomePage());
    });
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hi There!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );
  }
}