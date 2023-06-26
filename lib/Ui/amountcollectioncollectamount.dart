import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AmountCollection1 extends StatefulWidget {
  const AmountCollection1({Key? key}) : super(key: key);

  @override
  State<AmountCollection1> createState() => _AmountCollection1State();
}

late  FocusNode _focusNode1 ;
bool _isFocused1 = false;
late FocusNode _focusNode2;
bool _isFocused2 = false;
bool isExpanded = false;
class _AmountCollection1State extends State<AmountCollection1> {
  @override
  void initState() {
    super.initState();
    _focusNode1 = FocusNode();
    _focusNode1.addListener(() {
      setState(() {
        _isFocused1 = _focusNode1.hasFocus;
      });
    });
    _focusNode2 = FocusNode();
    _focusNode2.addListener(() {
      setState(() {
        _isFocused2 = _focusNode2.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
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
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 41.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      width: 37.062.w,
                      height: 37.062.h,
                      child: Image.asset('assets/arrowback.png'),
                    )),
              ),
              SizedBox(
                height: 122.94.h,
              ),
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 21.w, right: 21.w),
                      width: 326.w,
                      height: 396.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: SingleChildScrollView(
                          child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25.sp),
                                  offset: Offset(0, 1.sp),
                                  blurRadius: 2.r,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.r),
                                  topRight: Radius.circular(25.r))),
                          width: 326.w,
                          height: 63.h,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 68.w,
                                    top: 14.h,
                                    bottom: 13.94.h,
                                    right: 2.w),
                                child: SizedBox(
                                    width: 35.06.w,
                                    height: 35.06.h,
                                    child: Image.asset('assets/option3.png')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 16.22.h, bottom: 14.35.h, left: 10.w),
                                child: SizedBox(
                                    width: 144.w,
                                    height: 29.h,
                                    child: Text(
                                      'Collect Amount',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          letterSpacing: -0.3.sp,
                                          color: Color(0xffEC1C24),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        FocusScope(
                          child: Container(
                            margin: EdgeInsets.only(left: 16.w, right: 17.w),
                            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _isFocused1 == false
                                    ? Color(0xffD9D9D9)
                                    : Color(
                                        0xffFF0000), // Change border color based on focus
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextField(
                              focusNode: _focusNode1,
                              decoration: InputDecoration(
                                hintText: 'Amount',
                                hintStyle: TextStyle(
                                  color: _isFocused1 == false
                                      ? Color(0xffEC1C24)
                                      : Color(0xffA4A4A4),
                                  letterSpacing: -0.3.sp,
                                  fontSize: _isFocused1 == false
                                      ? 15.0.sp
                                      : 13.0
                                          .sp, // Change hint text size based on focus
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w, right: 14.w),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFFEC1C24),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.r)),
                            ),
                            width: 299.w,
                            // Replace with your desired width
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  height: 36.h,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 108.w,
                                          ),
                                          child: SizedBox(
                                            width: 83.w,
                                            height: 26.h,
                                            child: Text(
                                              "Customer",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.30.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 63.w, right: 9.77.w),
                                            child: SizedBox(
                                                height: 10.8.h,
                                                width: 10.8.w,
                                                child: Image.asset(isExpanded
                                                    ? 'assets/arrowdown.png'
                                                    : 'assets/arrowforward.png'))),
                                      ],
                                    ),
                                  ),
                                ),
                                if (isExpanded)
                                  Container(
                                    width: 299.w,
                                    height: 174.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        FocusScope(
                          child: Container(
                            margin: EdgeInsets.only(left: 16.w, right: 17.w),
                            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _isFocused2 == false
                                    ? Color(0xffD9D9D9)
                                    : Color(
                                        0xffFF0000), // Change border color based on focus
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextField(
                              focusNode: _focusNode2,
                              decoration: InputDecoration(
                                hintText: 'Pin ',
                                hintStyle: TextStyle(
                                  color: _isFocused2 == false
                                      ? Color(0xffEC1C24)
                                      : Color(0xffA4A4A4),
                                  letterSpacing: -0.3.sp,
                                  fontSize: _isFocused2 == false
                                      ? 15.0.sp
                                      : 13.0
                                          .sp, // Change hint text size based on focus
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      ]))),
                  Positioned(
                    top: 324.h,
                    left: 21.w,
                    right: 22.w,
                    child: Container(
                      width: 326.w,
                      height: 71.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, -1),
                              blurRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.r),
                              bottomRight: Radius.circular(25.r))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 189.w, right: 23.w, bottom: 18.h, top: 17.h),
                        child: Container(
                          width: 109.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: Color(0xffEC1C24),
                              borderRadius: BorderRadius.circular(6.r)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 9.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                                child: Container(
                                  width: 26.w,
                                  height: 26.h,
                                  decoration: ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.50.w, color: Colors.white),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 4.h,
                                        bottom: 4.h,
                                        right: 5.w,
                                        left: 6.w),
                                    child: Container(
                                        width: 15.w,
                                        height: 18.h,
                                        child:
                                            Image.asset('assets/collect.png')),
                                  ),
                                ),
                              ),Padding(
                                padding: EdgeInsets.only(
                                    top: 5.h,
                                    bottom: 5.h,
                                    left: 3.w),
                                child: Container(width: 58.w,height: 26.h,child: Text('Collect',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ))),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}
