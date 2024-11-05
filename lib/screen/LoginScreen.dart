import 'package:bai2_kiem_tra_thuc_tap_3/screen/ConfirmNumber.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/screen/ForgotPasswordScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/screen/SignUpScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/ButtonCustom.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/inputCustion.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController sdtController =TextEditingController(),
  passwordController = TextEditingController();
  String sdtError = '',passError = '';
  bool visible = true;
  void validateForm(){
    if(sdtController.text .isEmpty){
      sdtError = 'Vui lòng nhập';
    }else{
      sdtError = '';
    }

    if(passwordController.text .isEmpty){
      passError = 'Vui lòng nhập';
    }else{
      passError = '';
    }
  }
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: width,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  child: Padding(padding: const EdgeInsets.only(top: 20),
                    child: Stack(alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          left: 0,top: 0,
                          child: Container(width: 44,height: 44,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFF6F7FA)),child:
                            const Center(child: Icon(Icons.arrow_back_ios_new,size: 24,)),),
                        ),
                        const Image(image: AssetImage("assets/logo.png"),width: 88,)
                      ],
                    ),
                  ),
                ),
                  const SizedBox(height: 50,),
                  TextCustom(text: "Đăng nhập", color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600,),
                const SizedBox(height: 30,),
                InputCustom(onChanged:(p0) {
                  setState(() {
                    sdtError ='';
                  });
                },hint: "Số điện thoại",errorText: sdtError,textInputType: const TextInputType.numberWithOptions(), controller: sdtController),



                InputCustom(onChanged: (p0) {
                  setState(() {
                    passError = '';
                  });
                },hint: "Mật khẩu", errorText: passError,controller: passwordController,obscureText: visible,suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                }, icon: visible?const Icon(FontAwesomeIcons.eyeSlash ,size: 18,color: Color(0xFF9D9FA0)): const Icon(FontAwesomeIcons.eye,size: 18,color: Color(0xFF9D9FA0))  ),),
                Buttoncustom(text: "Đăng nhập",onTap: () {
                  setState(() {
                      validateForm();

                  });
                },),
                const SizedBox(height: 20,),
                Center(child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmnumberScreen(),));
                },child: TextCustom(text: "Quên mật khẩu? ", color: const Color(0xFF5956E9),fontWeight: FontWeight.w500,))),
                const Spacer(),
                Center(
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Signupscreen(),));

                      },
                      child: RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: "Chưa có tài khoản? ",style: TextStyle(color: Color(0xFF9D9FA0),fontWeight: FontWeight.w500,fontSize: 16)),
                            TextSpan(text: "Đăng kí",style: TextStyle(color: Color(0xFF5956E9),fontWeight: FontWeight.w500,fontSize: 16))
                          ]
                        )
                      ),
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
