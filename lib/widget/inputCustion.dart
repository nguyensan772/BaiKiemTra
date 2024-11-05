import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  TextEditingController controller ;
  String hint ;
  Widget? suffixIcon ;
  bool obscureText;
  TextInputType? textInputType;
  String errorText;
  Function(String)? onChanged;

  InputCustom({required this.hint,required this.controller,this.suffixIcon,this.obscureText =false,this.textInputType,this.errorText="",this.onChanged});
  @override
  State<InputCustom> createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return 
      Column(
        children: [
          SizedBox(
              width: width,
              child:TextField(onChanged: widget.onChanged, keyboardType: widget.textInputType ,controller: widget.controller,decoration: InputDecoration(

                  hintText: widget.hint,hintStyle: TextStyle(fontSize: 16,color: Color(0xFF9D9FA0)),border: InputBorder.none,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color:  widget.errorText!="" ?Colors.red : Colors.transparent)),
                  suffixIcon: widget.suffixIcon,filled: true,fillColor: widget.errorText!=""?Color(0xFFFFEEEE) :Color(0xFFF6F7FA)),obscureText: widget.obscureText,),
              )
          ,
          Row(children: [
            Text(widget.errorText,style: const TextStyle(color: Colors.red)),
            Spacer()
          ],  )
        ],

      )
      ;
  }
}
