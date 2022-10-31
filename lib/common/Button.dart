import 'package:flutter/material.dart';
import 'package:top_care/recourse/colors_manger.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MainButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 16,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(ColorManger.primry),
backgroundColor: MaterialStateProperty.all(ColorManger.gray),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),

         ),


        child: Text(
          text,
          style: const  TextStyle(color:ColorManger.blue, fontSize:  20, fontWeight: FontWeight.bold  ),
        ),
      ),
    );
  }
}
