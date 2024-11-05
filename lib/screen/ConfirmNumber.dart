import 'package:bai2_kiem_tra_thuc_tap_3/screen/ForgotPasswordScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/screen/OTPScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/inputCustion.dart';
import '../widget/textCustom.dart';

class ConfirmnumberScreen extends StatefulWidget {
  const ConfirmnumberScreen({super.key});

  @override
  State<ConfirmnumberScreen> createState() => _ConfirmnumberScreenState ();
}

class _ConfirmnumberScreenState extends State<ConfirmnumberScreen> {
  TextEditingController  passwordController = TextEditingController();
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                width: width,
                child: Padding(padding: EdgeInsets.only(top: 20),
                  child: Stack(alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: 0,top: 0,
                        child: Container(width: 44,height: 44,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFF6F7FA)),child:
                        Center(child: IconButton(onPressed: () {
                          Navigator.pop(context);
                        },icon: const Icon(Icons.arrow_back_ios_new,size: 24,))),),
                      ),
                      const Image(image: AssetImage("assets/logo.png"),width: 88,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(child: TextCustom(text: "Khôi phục mật khẩu" , textAlign: TextAlign.center,color: const Color(0xFF303030),fontSize: 18,fontWeight: FontWeight.w600,)),
              const SizedBox(height: 10,),
              Center(child: TextCustom(text: "Nhập số điện thoại của bạn để khôi phục mật khẩu của bạn" , textAlign: TextAlign.center,color: const Color(0xFF303030),fontSize: 16,fontWeight: FontWeight.w500,)),
              const SizedBox(height: 20,),
              InputCustom(hint: "Số điện thoại", controller: passwordController),


              Buttoncustom(text: "Gửi mã khôi phục", onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
              },)
            ],
          ),
        ),
      )),
    );
  }
}
