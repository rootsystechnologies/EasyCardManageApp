import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
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
                height: 102.94.h,
              ),
              Container(
                  margin: EdgeInsets.only(left: 21.w, right: 21.w),
                  width: 326.w,
                  height: 558.h,
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
                      height: 70.63.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 107.w,
                                top: 16.48.h,
                                bottom: 16.48.h,
                                right: 2.w),
                            child: SizedBox(
                                width: 35.06.w,
                                height: 35.06.h,
                                child: Image.asset('assets/option5.png')),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 16.22.h, bottom: 14.35.h, left: 7.w),
                            child: SizedBox(
                                width: 74.w,
                                height: 30.61.h,
                                child: Text(
                                  'Profile',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      letterSpacing: -0.3.sp,
                                      color: Color(0xffEC1C24),
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17.37.h,
                    ),
                    Container(
                      width: 293.w,
                      height: 51.h,
                      margin: EdgeInsets.only(left: 16.w, right: 17.w),
                      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)
                            // Change border color based on focus
                            ),
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 13.h,
                              bottom: 11.h,
                            ),
                            child: SizedBox(
                                width: 127.w,
                                height: 27.h,
                                child: Text(
                                  'Username',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      letterSpacing: -0.3.sp,
                                      color: Color(0xFFEC1C24),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 90.w,
                          ),
                          SizedBox(
                            width: 19.w,
                            height: 19.h,
                            child: Image.asset('assets/edit.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 293.w,
                      height: 51.h,
                      margin: EdgeInsets.only(left: 16.w, right: 17.w),
                      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)
                            // Change border color based on focus
                            ),
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 13.h,
                              bottom: 11.h,
                            ),
                            child: SizedBox(
                                width: 127.w,
                                height: 27.h,
                                child: Text(
                                  '789 369 4556',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      letterSpacing: -0.3.sp,
                                      color: Color(0xFFEC1C24),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 90.w,
                          ),
                          SizedBox(
                            width: 19.w,
                            height: 19.h,
                            child: Image.asset('assets/edit.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 293.w,
                      height: 51.h,
                      margin: EdgeInsets.only(left: 16.w, right: 17.w),
                      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)
                            // Change border color based on focus
                            ),
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 13.h,
                              bottom: 11.h,
                            ),
                            child: SizedBox(
                                width: 216.w,
                                height: 27.h,
                                child: Text(
                                  'johnadam@gmail.com',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      letterSpacing: -0.3.sp,
                                      color: Color(0xFFEC1C24),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 19.w,
                            height: 19.h,
                            child: Image.asset('assets/edit.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.w, right: 26.w),
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
                                  width: 23.88.w,
                                  height: 28.h,
                                  child: Image.asset('assets/password.png')),
                              SizedBox(
                                width: 10.12.w,
                              ),
                              SizedBox(
                                height: 26.h,
                                width: 133.w,
                                child: Text('Change Password',
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
                                width: 38.w,
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
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.w, right: 26.w),
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
                                  height: 29.75.h,
                                  child: Image.asset('assets/pin.png')),
                              SizedBox(
                                width: 8.w,
                              ),
                              SizedBox(
                                height: 26.h,
                                width: 91.w,
                                child: Text('Change Pin',
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
                                width: 80.w,
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
                      height: 29.h,
                    ),
                    Container(
                      width: 326.w,
                      height: 73.h,
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
                  ])))
            ])));
  }
}
