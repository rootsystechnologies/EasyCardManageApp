import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container( decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        transform:
        GradientRotation(190.64 * (3.1415926535897932 / 180.0).sp),
        stops: [0.0057.sp, 0.969.sp],
        colors: [
          Color(0xffD70000),
          Color(0xffFF6A6A),
        ],
      ),
    ),),);
  }
}
