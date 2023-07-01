import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'addcustomerfeature.dart';
import 'afftercustomersaveeditdetails.dart';

class AfterSaveCustomer extends StatefulWidget {
  final String name;
  final String mobile;
  final String email;
  final String opbalance;
  final String creditLimit;
  final String password;
  final String passwordConfirmation;
  final List<String> allowedPerms;

  const AfterSaveCustomer(
      {super.key,
      required this.password,
      required this.mobile,
      required this.email,
      required this.opbalance,
      required this.creditLimit,
      required this.passwordConfirmation,
      required this.name,
      required this.allowedPerms});

  @override
  State<AfterSaveCustomer> createState() => _AfterSaveCustomerState();
}

class _AfterSaveCustomerState extends State<AfterSaveCustomer> {
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
                        height: 60.h,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 17.w, right: 17.w),
                          width: 326.w,
                          height: 585.5.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.r),
                          ),
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
                              height: 60.h,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 55.w,
                                      top: 23.h,
                                      bottom: 9.h,
                                      right: 10.w,
                                    ),
                                    child: SizedBox(
                                        width: 29.w,
                                        height: 28.h,
                                        child: Image.asset('assets/cd.png')),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 11.h, right: 52.w),
                                    child: Center(
                                      child: SizedBox(
                                        width: 180.w,
                                        height: 49.h,
                                        child: Center(
                                          child: Text(
                                            'Customer Details',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                letterSpacing: -0.3.sp,
                                                color: Color(0xffEC1C24),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 127.w,
                                  height: 24.h,
                                  child: Text(
                                    'Customer Name :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 73.w,
                                  height: 20.h,
                                  child: Text(
                                    'John Adam',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 133.w,
                                  height: 18.h,
                                  child: Text(
                                    'Mobile Number    :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 84.w,
                                  height: 20.h,
                                  child: Text(
                                    '789 369 4556',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14.75.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 11.25.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 133.w,
                                  height: 18.h,
                                  child: Text(
                                    'Email id                   :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150.w,
                                  height: 20.h,
                                  child: Text(
                                    'Johnadam@gmail.com',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.5.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 7.5.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 127.w,
                                  height: 24.h,
                                  child: Text(
                                    'Current Balance  :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 54.w,
                                  height: 20.h,
                                  child: Text(
                                    '2556 sar',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14.25.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 8.75.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 127.w,
                                  height: 24.h,
                                  child: Text(
                                    'Credit Limit            :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 54.w,
                                  height: 20.h,
                                  child: Text(
                                    '2556 sar',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 11.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 127.w,
                                  height: 24.h,
                                  child: Text(
                                    'Current Credit      :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 54.w,
                                  height: 20.h,
                                  child: Text(
                                    '2556 sar',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 11.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 11.w, right: 12.93.w),
                              child: Divider(
                                color: Color(0xffE5E5E5),
                                thickness: 1.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 127.w,
                                  height: 24.h,
                                  child: Text(
                                    'Credit Balance     :',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 54.w,
                                  height: 20.h,
                                  child: Text(
                                    '2556 sar',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFA3A3A3),
                                        fontSize: 13.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 18.h,
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
                                  GestureDetector(
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (_) => AddCustomerFeature(
                                                  opbalance: widget.opbalance,
                                                  email: widget.email,
                                                  mobile: widget.mobile,
                                                  password: widget.password,
                                                  name: widget.name,
                                                  passwordConfirmation: widget
                                                      .passwordConfirmation,
                                                  creditLimit:
                                                      widget.creditLimit,
                                                ))),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 42.w,
                                          top: 20.h,
                                          bottom: 20.h,
                                          right: 23.w),
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
                                                left: 9.w,
                                                top: 6.h,
                                                bottom: 8.h),
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
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => EditCustomer())),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: 20.h, bottom: 20.h, right: 20.w),
                                      width: 136.w,
                                      height: 36.h,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFF0000),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7.r)),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 9.w,
                                                top: 8.h,
                                                bottom: 9.h,
                                                right: 6.w),
                                            child: SizedBox(
                                              width: 19.w,
                                              height: 19.h,
                                              child:
                                                  Image.asset('assets/up1.png'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 94.w,
                                            height: 18.h,
                                            child: Text(
                                              'Update Details',
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
                                  ),
                                ],
                              ),
                            )
                          ]))
                    ]))));
  }
}
