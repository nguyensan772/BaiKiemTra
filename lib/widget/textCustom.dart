import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  String text;
  double? fontSize ;
  FontWeight? fontWeight;
  TextAlign textAlign ;
  Color color ;
  TextOverflow? overflow;

  TextCustom({super.key, required this.text, this.fontSize, this.fontWeight, this.textAlign = TextAlign.left,required this.color,this.overflow });

  @override
  Widget build(BuildContext context) {
      return Text(overflow: overflow,text,style: TextStyle(fontWeight: fontWeight , fontSize: fontSize, color: color ),textAlign: textAlign,);
  }



}