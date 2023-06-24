import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AmountCollection extends StatefulWidget {
  const AmountCollection({Key? key}) : super(key: key);

  @override
  State<AmountCollection> createState() => _AmountCollectionState();
}

class _AmountCollectionState extends State<AmountCollection> {
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            body: Container(
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
                                      color: Color.fromRGBO(0, 0, 0, 0.25.sp),
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
                                        top: 16.22.h, bottom: 14.35.h),
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
                            SizedBox(
                              height: 16.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.w,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEC1C24),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.r)),
                                    ),
                                    width: 144.w,
                                    // Replace with your desired width
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.w),
                                                  child: SizedBox(
                                                    width: 86.w,
                                                    height: 26.h,
                                                    child: Text(
                                                      "From Date",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              -0.30.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.w,
                                                        right: 9.77.w),
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
                                            width: 200,
                                            height: 60,
                                            color: Colors.blue,
                                          ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 11.w,
                                  ),
                                  Container(
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEC1C24),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.r)),
                                    ),
                                    width: 144.w,
                                    // Replace with your desired width
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        SizedBox(
                                          height: 36.h,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                isExpanded1 = !isExpanded1;
                                              });
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 31.w),
                                                  child: SizedBox(
                                                    width: 64.w,
                                                    height: 26.h,
                                                    child: Text(
                                                      "To Date",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              -0.30.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 17.w,
                                                        right: 9.77.w),
                                                    child: SizedBox(
                                                        height: 10.8.h,
                                                        width: 10.8.w,
                                                        child: Image.asset(isExpanded1
                                                            ? 'assets/arrowdown.png'
                                                            : 'assets/arrowforward.png'))),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (isExpanded1)
                                          Container(
                                            width: 200,
                                            height: 60,
                                            color: Colors.blue,
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 18.w, right: 20.w),
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFFEC1C24),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(7.r)),
                                ),
                                width: 299.w,
                                // Replace with your desired width
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(
                                      height: 36.h,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            isExpanded2 = !isExpanded2;
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.30.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 63.w,
                                                    right: 9.77.w),
                                                child: SizedBox(
                                                    height: 10.8.h,
                                                    width: 10.8.w,
                                                    child: Image.asset(isExpanded2
                                                        ? 'assets/arrowdown.png'
                                                        : 'assets/arrowforward.png'))),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (isExpanded2)
                                      Container(
                                        width: 200,
                                        height: 60,
                                        color: Colors.blue,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22.h,
                            ),
                            Divider(
                              color: Color(0xffEC1C24),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  width: 71.w,
                                  height: 21.h,
                                  child: Text('Customer',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Color(0xFFEC1C24),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  width: 62.w,
                                ),
                                SizedBox(
                                    height: 21.h,
                                    width: 32.90.w,
                                    child: Text(
                                      'Date',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Color(0xFFEC1C24),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ),
                                      ),
                                    )),
                                SizedBox(
                                  width: 75.w,
                                ),
                                SizedBox(
                                  height: 21.h,
                                  width: 55.84.w,
                                  child: Text('Amount',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xFFEC1C24),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30.sp,
                                      ))),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Divider(
                              color: Color(0xffEC1C24),
                              thickness: 1.3.sp,
                            ),
                            SizedBox(
                              height: 318.h,
                              width: 337.w,
                              child: ListView.separated(
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      SizedBox(
                                        width: 93.w,
                                        height: 21.h,
                                        child: Text(' Customer 01',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                              color: Color(0xFFA3A3A3),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30.sp,
                                            ))),
                                      ),
                                      SizedBox(
                                        width: 24.w,
                                      ),
                                      SizedBox(
                                        width: 93.w,
                                        height: 21.h,
                                        child: Text('DD-YY-MM',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                              color: Color(0xFFA3A3A3),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30.sp,
                                            ))),
                                      ),
                                      SizedBox(
                                        width: 44.w,
                                      ),
                                      SizedBox(
                                        width: 62.w,
                                        height: 21.h,
                                        child: Text('1234 Sar',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                              color: Color(0xFFA3A3A3),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30.sp,
                                            ))),
                                      )
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return Divider(
                                    color: Color(0xffD9D9D9),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Container(
                              width: 337.w,
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
                                    left: 76.w,
                                    right: 78.w,
                                    top: 15.h,
                                    bottom: 13.h),
                                child: Container(
                                  width: 183.w,
                                  height: 43.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEC1C24),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5)),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left:13.w,top: 8.h,bottom: 9.h ,),
                                        child: SizedBox(
                                          width: 23.w,
                                          height: 26.h,child: Image.asset('assets/collect.png'),
                                        ),
                                      ),SizedBox(width: 128.w,height: 26.h,child:Text(
                                        'Collect Amount',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30.sp,
                                            ))
                                      ) ,)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
