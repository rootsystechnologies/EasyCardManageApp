import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AmountCollection extends StatefulWidget {
  const AmountCollection({Key? key}) : super(key: key);

  @override
  State<AmountCollection> createState() => _AmountCollectionState();
}

class _AmountCollectionState extends State<AmountCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
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
                            margin: EdgeInsets.only(left: 21.w, right: 21.w),
                            width: 337.w,
                            height: 663.h,
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
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.25.sp),
                                          offset: Offset(0, 1.sp),
                                          blurRadius: 2.r,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.r),
                                          topRight: Radius.circular(25.r))),
                                  width: 337.w,
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
                                            child: Image.asset(
                                                'assets/option3.png')),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(

                                            top: 16.22.h,
                                            bottom: 14.35.h),
                                        child: SizedBox(
                                            width: 160.39.w,
                                            height: 32.43.h,
                                            child: Text(
                                              'Amount Collection',
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
                              ],
                            ),
                          )
                        ])))));
  }
}
