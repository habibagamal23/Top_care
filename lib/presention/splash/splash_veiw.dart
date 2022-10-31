import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages

import 'package:top_care/recourse/routeing.dart';
import 'package:top_care/recourse/string_manger.dart';

import '../../recourse/assets_manger.dart';
import '../../recourse/colors_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  startTime() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(Routes.confirmRoute);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.lightblue,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Lottie.asset(MangerAssets.splashAssetAnim,
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 3,
                      fit: BoxFit.cover),
                  
                  Text(MangerString.topcare , style: TextStyle(color:  ColorManger.blue, fontSize: 15),)
                ]),
          ),
        ),
      ),
    );
  }
}
