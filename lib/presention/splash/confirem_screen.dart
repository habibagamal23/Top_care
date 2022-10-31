import 'package:flutter/material.dart';
import 'package:top_care/recourse/assets_manger.dart';
import 'package:top_care/recourse/colors_manger.dart';
import 'package:top_care/recourse/string_manger.dart';

import '../../common/Button.dart';

class ConfiremScreen extends StatefulWidget {
  const ConfiremScreen({Key? key}) : super(key: key);

  @override
  State<ConfiremScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ConfiremScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.lightblue,
      body: SafeArea(
        child: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Image.asset(
                MangerAssets.confirm,
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.fill
                ,
              ),




                 // SizedBox(height: MediaQuery.of(context).size.height / 5),
              const Text(
                MangerString.confirmscreen,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.blue,
                ),
              ),
                  Container(
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: MainButton(
                           onTap: () {},
                           text: MangerString.Create,
                         ),
                       ),
                       const SizedBox(height: 5.0),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: MainButton(
                           onTap: () {},
                           text: MangerString.haveAcc,
                         ),
                       )
                     ],
                   ),
                  ),

            ]),
          ),
        ),
      ),
    );
  }
}
