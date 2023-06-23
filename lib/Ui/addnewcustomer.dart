import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({Key? key}) : super(key: key);

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

final FocusNode _focusNode1 = FocusNode();
bool _isFocused1 = false;
final FocusNode _focusNode2 = FocusNode();
bool _isFocused2 = false;
final FocusNode _focusNode3 = FocusNode();
bool _isFocused3 = false;
final FocusNode _focusNode4 = FocusNode();
bool _isFocused4 = false;
final FocusNode _focusNode5 = FocusNode();
bool _isFocused5 = false;
final FocusNode _focusNode6 = FocusNode();
bool _isFocused6 = false;

class _AddNewCustomerState extends State<AddNewCustomer> {
  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {
        _isFocused1 = _focusNode1.hasFocus;
      });
    });
    _focusNode2.addListener(() {
      setState(() {
        _isFocused2 = _focusNode2.hasFocus;
      });
    });
    _focusNode3.addListener(() {
      setState(() {
        _isFocused3 = _focusNode3.hasFocus;
      });
    });
    _focusNode4.addListener(() {
      setState(() {
        _isFocused4 = _focusNode4.hasFocus;
      });
    });
    _focusNode5.addListener(() {
      setState(() {
        _isFocused5 = _focusNode5.hasFocus;
      });
    });
    _focusNode6.addListener(() {
      setState(() {
        _isFocused6 = _focusNode6.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    _focusNode5.dispose();
    _focusNode6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    transform: GradientRotation(
                        190.64 * (3.1415926535897932 / 180.0).sp),
                    stops: [0.0057.sp, 0.969.sp],
                    colors: [
                      Color(0xffD70000),
                      Color(0xffFF6A6A),
                    ],
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        height: 26.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17.w, right: 17.w),
                        width: 326.w,
                        height: 608.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Column(
                          children: [
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
                              height: 77.867.h,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 64.w,
                                      top: 19.h,
                                      bottom: 24.87.h,
                                      right: 5.w,
                                    ),
                                    child: SizedBox(
                                        width: 34.w,
                                        height: 34.h,
                                        child:
                                            Image.asset('assets/option2.png')),
                                  ),
                                  SizedBox(
                                      width: 159.w,
                                      height: 26.h,
                                      child: Text(
                                        'Add New Customer',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            letterSpacing: -0.3.sp,
                                            color: Color(0xffEC1C24),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                height: 453.h,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10.13.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused1 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode1,
                                            decoration: InputDecoration(
                                              hintText: 'Customer Name',
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
                                        height: 27.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused2 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode2,
                                            decoration: InputDecoration(
                                              hintText: 'Mobile Number',
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
                                      ),
                                      SizedBox(
                                        height: 27.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused3 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode3,
                                            decoration: InputDecoration(
                                              hintText: 'Email id',
                                              hintStyle: TextStyle(
                                                color: _isFocused3 == false
                                                    ? Color(0xffEC1C24)
                                                    : Color(0xffA4A4A4),
                                                letterSpacing: -0.3.sp,
                                                fontSize: _isFocused3 == false
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
                                        height: 27.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused4 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode4,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Current Balance - 2556 Sar',
                                              hintStyle: TextStyle(
                                                color: _isFocused4 == false
                                                    ? Color(0xffEC1C24)
                                                    : Color(0xffA4A4A4),
                                                letterSpacing: -0.3.sp,
                                                fontSize: _isFocused4 == false
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
                                        height: 27.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused5 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode5,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Credit Limit - 2556 Sar',
                                              hintStyle: TextStyle(
                                                color: _isFocused5 == false
                                                    ? Color(0xffEC1C24)
                                                    : Color(0xffA4A4A4),
                                                letterSpacing: -0.3.sp,
                                                fontSize: _isFocused5 == false
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
                                        height: 27.h,
                                      ),
                                      FocusScope(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 16.w, right: 17.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: _isFocused6 == false
                                                  ? Color(0xffD9D9D9)
                                                  : Color(
                                                      0xffFF0000), // Change border color based on focus
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: TextField(
                                            focusNode: _focusNode6,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Current Credit - 2556 Sar',
                                              hintStyle: TextStyle(
                                                color: _isFocused6 == false
                                                    ? Color(0xffEC1C24)
                                                    : Color(0xffA4A4A4),
                                                letterSpacing: -0.3.sp,
                                                fontSize: _isFocused6 == false
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
                                        height: 27.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 326.w,
                              height: 76.h,
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
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 56.w,
                                  ),
                                  Container(
                                    width: 105.w,
                                    height: 36.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF0492E2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.r)),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.w, top: 6.h, bottom: 8.h),
                                          child: SizedBox(
                                            width: 24.w,
                                            height: 22.h,
                                            child: Image.asset(
                                                'assets/features.png'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                          width: 55.w,
                                          height: 18.h,
                                          child: Text(
                                            'Features',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: -0.3.sp),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 28.w,
                                  ),
                                  Container(
                                    width: 82.w,
                                    height: 34.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEC1C24),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        SizedBox(
                                            width: 14.w,
                                            height: 13.h,
                                            child:
                                                Image.asset('assets/saver.png')),SizedBox(width: 4.w,),
                                        SizedBox(
                                          width: 41.w,
                                          height: 25.h,child: Text('SAVE',style:GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.3.sp),
                                        ),),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]))));
  }
}
