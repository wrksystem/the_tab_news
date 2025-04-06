import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String routeName = '/';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => LoginPage()),
      // );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100).r,
                child: Image.asset('assets/icons/logo_light.png',
                  width: 200.r,
                  height: 200.r,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 120).r,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }}