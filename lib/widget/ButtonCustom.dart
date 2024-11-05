import 'package:bai2_kiem_tra_thuc_tap_3/widget/textCustom.dart';
import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {
  String text ;
  Color? color ;
  Function() onTap ;
  Buttoncustom({required this.text,required this.onTap,this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
          width:  width,
          decoration: BoxDecoration(color: Color(0xFF5956E9),borderRadius: BorderRadius.circular(8)),
          child: Center(child: Padding(padding: EdgeInsets.all(20),child: TextCustom(text: text, color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,))),
      ),
    );
  }
}
