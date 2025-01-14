import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/presentation/components/profile_picture.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_img.png',
              fit: BoxFit.cover,
            ),
          ),

          // fade
          Positioned.fill(
            child: Image.asset(
              'assets/images/fade.png',
              fit: BoxFit.cover,
            ),
          ),

          // content
        ],
      ),
    );
  }
}
