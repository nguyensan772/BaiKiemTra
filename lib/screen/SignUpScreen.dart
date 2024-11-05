import 'package:bai2_kiem_tra_thuc_tap_3/screen/OTPScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/ButtonCustom.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/inputCustion.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController sdtController =TextEditingController(),
  passwordController = TextEditingController();
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return  GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(child: Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: width,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  TextCustom(text: "Đăng kí", color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600,),
                const SizedBox(height: 30,),
                InputCustom(hint: "Họ và tên", controller: sdtController),
                InputCustom(hint: "Số điện thoại",textInputType: const TextInputType.numberWithOptions(), controller: sdtController),
                InputCustom(hint: "Mật khẩu", controller: passwordController,obscureText: visible,suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                }, icon: visible?const Icon(FontAwesomeIcons.eyeSlash ,size: 18,color: Color(0xFF9D9FA0)): const Icon(FontAwesomeIcons.eye,size: 18,color: Color(0xFF9D9FA0))  ),),
                InputCustom(hint: "Nhập lại mật khẩu", controller: passwordController,obscureText: visible,suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                }, icon: visible?const Icon(FontAwesomeIcons.eyeSlash ,size: 18,color: Color(0xFF9D9FA0)): const Icon(FontAwesomeIcons.eye,size: 18,color: Color(0xFF9D9FA0))  ),),
                Buttoncustom(text: "Đăng kí",onTap: () {
                },),
                SizedBox(height: 20,),
                Center(
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: RichText(textAlign: TextAlign.center,text: const TextSpan(
                        children: [
                          TextSpan(text: "Bằng cách đăng ký, bạn chấp nhận ",style: TextStyle(color: Color(0xFF9D9FA0),fontWeight: FontWeight.w500,fontSize: 14)),
                          TextSpan(text: "Điều khoản dịch vụ ",style: TextStyle(color: Color(0xFF5956E9),fontWeight: FontWeight.w500,fontSize: 14)),
                          TextSpan(text: "và ",style: TextStyle(color: Color(0xFF9D9FA0),fontWeight: FontWeight.w500,fontSize: 14)),
                          TextSpan(text: "Chính sách quyền riêng tư",style: TextStyle(color: Color(0xFF5956E9),fontWeight: FontWeight.w500,fontSize: 14))

                        ]
                    )),
                  ),
                ),
                Spacer(),
                Center(
                  child: InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Padding(padding: EdgeInsets.all(20),
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: "Đã có tài khoản? ",style: TextStyle(color: Color(0xFF9D9FA0),fontWeight: FontWeight.w500,fontSize: 16)),
                          TextSpan(text: "Đăng nhập",style: TextStyle(color: Color(0xFF5956E9),fontWeight: FontWeight.w500,fontSize: 16))
                        ]
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
