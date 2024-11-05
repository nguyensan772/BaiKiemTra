import 'package:bai2_kiem_tra_thuc_tap_3/screen/ForgotPasswordScreen.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/ButtonCustom.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/dialogCustom.dart';
import 'package:bai2_kiem_tra_thuc_tap_3/widget/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}
  int? OTPCode ;
class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context)  {

    double width = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
      
      width: 40,
      height: 60,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Color(0xFFD7DCE4)),borderRadius: BorderRadius.circular(8)
          ,color: Color(0xFFF6F7FA)
      ),
      
    );
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
                  child: Padding(padding: EdgeInsets.only(top: 20),
                    child: Stack(alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          left: 0,top: 0,
                          child: Container(width: 44,height: 44,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFF6F7FA)),child:
                          Center(child:IconButton(onPressed: () {
                            Navigator.pop(context);
                          },icon: const Icon(Icons.arrow_back_ios_new,size: 24,))),),
                        ),
                        Image(image: AssetImage("assets/logo.png"),width: 88,)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(child: TextCustom(text: "Mã OTP đã được gửi đến số điện thoại" , color: const Color(0xFF303030),fontSize: 16,fontWeight: FontWeight.w500,)),
                const SizedBox(height: 20,),
                Container(
                  child: Center(
                    child: Pinput(length: 4,
                    defaultPinTheme: defaultPinTheme,
                    onCompleted: (value) {
                      OTPCode = int.parse(value);
                    } ,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(
                  child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(text: "Mã OTP sẽ hết hạn trong: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                      TextSpan(text: "45s",style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.w500))
                    ]
                  ),),
                ),
                const SizedBox(height: 20,),

                Buttoncustom(text: "Xác nhận", onTap: () {
                  setState(() {
                    if(OTPCode == 1111){
                      showDialog(context: context, builder: (context) => DialogCustom(onSuccess: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen(),));
                      },),);
                    }


                  });
                },),
                Center(
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: "Không nhận được mã? ",style: TextStyle(color: Color(0xFF9D9FA0),fontWeight: FontWeight.w500,fontSize: 16)),
                          TextSpan(text: "Gửi lại",style: TextStyle(color: Color(0xFF5956E9),fontWeight: FontWeight.w500,fontSize: 16))
                        ]
                    )),
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
