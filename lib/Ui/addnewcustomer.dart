import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({Key? key}) : super(key: key);

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
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
                        ),child: Column(children: [
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
                                    child: Image.asset('assets/option2.png')),
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
                      ],),
                      )
                    ]))));
  }
}
