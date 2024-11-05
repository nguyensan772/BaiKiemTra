import 'package:bai2_kiem_tra_thuc_tap_3/screen/LoginScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    },);
    return SafeArea(child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img.png"),fit: BoxFit.cover,))
        ),
      ),
    );
  }
}
