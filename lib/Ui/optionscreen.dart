import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

import 'addnewcustomer.dart';
import 'customers.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 63.h,
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
                    margin: EdgeInsets.only(left: 21.w, right: 21.w),
                    width: 318.w,
                    height: 627.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            width: 318.w,
                            height: 69.h,
                            padding: EdgeInsets.only(
                                left: 70.w,
                                top: 16.h,
                                bottom: 17.h,
                                right: 102.01.w),
                            child: SizedBox(
                                width: 145.99.w,
                                height: 36.h,
                                child: Image.asset('assets/logintitle.png')),
                          ),
                          SizedBox(
                            height: 35.67.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 27.w),
                            child: GestureDetector(onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Customers())),
                              child: DottedBorder(
                                dashPattern: [4.sp, 4.sp],
                                borderType: BorderType.RRect,
                                color: Color(0xffEC1C24),
                                radius: Radius.circular(8.r),
                                strokeWidth: 1.sp,
                                child: Container(
                                  width: 264.w,
                                  height: 54.h,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      SizedBox(
                                          width: 28.w,
                                          height: 28.h,
                                          child: Image.asset('assets/option1.png')),
                                      SizedBox(
                                        width: 9.w,
                                      ),
                                      SizedBox(
                                        height: 26.h,
                                        width: 127.w,
                                        child: Text('Customers',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                letterSpacing: -0.3.sp,
                                                color: Color(0xffEC1C24),
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        width: 44.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.h, bottom: 25.h, right: 14.w),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Color(0xffEC1C24),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 27.w),
                            child: GestureDetector(onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AddNewCustomer())),
                              child: DottedBorder(
                                dashPattern: [4.sp, 4.sp],
                                borderType: BorderType.RRect,
                                color: Color(0xffEC1C24),
                                radius: Radius.circular(8.r),
                                strokeWidth: 1.sp,
                                child: Container(
                                  width: 264.w,
                                  height: 54.h,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      SizedBox(
                                          width: 28.w,
                                          height: 28.h,
                                          child: Image.asset('assets/option2.png')),
                                      SizedBox(
                                        width: 9.w,
                                      ),
                                      Text('Add New Customer',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: -0.3.sp,
                                              color: Color(0xffEC1C24),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.h, bottom: 25.h, right: 14.w),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Color(0xffEC1C24),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 27.w),
                            child: DottedBorder(
                              dashPattern: [4.sp, 4.sp],
                              borderType: BorderType.RRect,
                              color: Color(0xffEC1C24),
                              radius: Radius.circular(8.r),
                              strokeWidth: 1.sp,
                              child: Container(
                                width: 264.w,
                                height: 54.h,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    SizedBox(
                                        width: 28.w,
                                        height: 28.h,
                                        child: Image.asset('assets/option3.png')),
                                    SizedBox(
                                      width: 9.w,
                                    ),
                                    Text('Amount Collection',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            letterSpacing: -0.3.sp,
                                            color: Color(0xffEC1C24),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 34.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 15.h, bottom: 25.h, right: 14.w),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color(0xffEC1C24),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 27.w),
                            child: DottedBorder(
                              dashPattern: [4.sp, 4.sp],
                              borderType: BorderType.RRect,
                              color: Color(0xffEC1C24),
                              radius: Radius.circular(8.r),
                              strokeWidth: 1.sp,
                              child: Container(
                                width: 264.w,
                                height: 54.h,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    SizedBox(
                                        width: 28.w,
                                        height: 28.h,
                                        child: Image.asset('assets/option4.png')),
                                    SizedBox(
                                      width: 9.w,
                                    ),
                                    SizedBox(
                                      height: 26.h,
                                      width: 127.w,
                                      child: Text('Wallet History',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: -0.3.sp,
                                              color: Color(0xffEC1C24),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 44.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 15.h, bottom: 25.h, right: 14.w),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color(0xffEC1C24),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.w, right: 27.w),
                            child: DottedBorder(
                              dashPattern: [4.sp, 4.sp],
                              borderType: BorderType.RRect,
                              color: Color(0xffEC1C24),
                              radius: Radius.circular(8.r),
                              strokeWidth: 1.sp,
                              child: Container(
                                width: 264.w,
                                height: 54.h,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    SizedBox(
                                        width: 28.w,
                                        height: 28.h,
                                        child: Image.asset('assets/option5.png')),
                                    SizedBox(
                                      width: 9.w,
                                    ),
                                    SizedBox(
                                      height: 26.h,
                                      width: 74.w,
                                      child: Text('Profile',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: -0.3.sp,
                                              color: Color(0xffEC1C24),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 97.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 15.h, bottom: 25.h, right: 14.w),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color(0xffEC1C24),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),SizedBox(height: 22.h,),Container(
                            width: 318.w,
                            height: 57.h,
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
                          )
                        ])),

              ],
            ),
          )),
    );
  }
}
