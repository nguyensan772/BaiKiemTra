import 'package:bai2_kiem_tra_thuc_tap_3/widget/ButtonCustom.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialogCustom extends StatelessWidget {
  Function() onSuccess ;


  DialogCustom({required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    double  width = MediaQuery.of(context).size.width;

    return Dialog(
      
      child: Padding(
      padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        
          height: 250,
          child: Column(
            children: [
        
              Container(width: 60,height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: Color(0xFF1DB93F)),
              child: Icon(FontAwesomeIcons.check,color: Colors.white,size: 40,),),
              const SizedBox(height: 10,),
              TextCustom(text:  "ĐĂNG KÍ TÀI KHOẢN THÀNH CÔNG", color: Color(0xFF1DB93F) ,fontWeight: FontWeight.w500,fontSize: 14,),
              const SizedBox(height: 20,),
              Buttoncustom(text: "Đăng nhập ngay", onTap: onSuccess),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width:  width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Color(0xFF65676B))),
                  child: Center(child: Padding(padding: EdgeInsets.all(20),child: TextCustom(text: "Thoát", color: Color(0xFF65676B),fontSize: 16,fontWeight: FontWeight.w600,))),
                ),
              )
        
            ],  
          ),
        ),
      ),
    );
  }
}
