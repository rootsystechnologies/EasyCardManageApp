import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCustomerFeature extends StatefulWidget {
  const AddCustomerFeature({Key? key}) : super(key: key);

  @override
  State<AddCustomerFeature> createState() => _AddCustomerFeatureState();
}

List<bool> values = [false, false, false, false, false];
int? selectedRadio;

void setSelectedRadio(int? value) {
  if (selectedRadio == value) {
    // Deselect the radio button if it is already selected
    selectedRadio = null;
  } else {
    // Select the radio button
    selectedRadio = value;
  }
}

class _AddCustomerFeatureState extends State<AddCustomerFeature> {
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
                          height: 654.h,
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
                              height: 72.32.h,
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
                                        width: 38.w,
                                        height: 35.13.h,
                                        child: Image.asset(
                                            'assets/features1.png')),
                                  ),
                                  SizedBox(
                                      width: 131.w,
                                      height: 28.93.h,
                                      child: Text(
                                        'Edit Features',
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
                            Container(
                              width: 326.w,
                              height: 519.h,
                              child: ListView.separated(
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 29.67.h,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: Colors.white,
                                          checkColor: Color(0xffEC1C24),
                                          value: values[index],
                                          onChanged: (bool? value) {
                                            setState(() {
                                              values[index] = value!;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Data Card',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: -0.3.sp,
                                              color: values[index] == false
                                                  ? Color(0xffD9D9D9)
                                                  : Colors.red,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 19.7.h,
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 326.w,
                              height: 61.99.h,
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
                                    width: 31.w,
                                  ),
                                  Transform.scale(
                                    scale: 24.w / 20.h,
                                    child: Radio(
                                      activeColor: Color(0xffEC1C24),
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (value) {
                                        setSelectedRadio(value);
                                      },
                                    ),
                                  ),
                                  Text(
                                    'Allow all',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        letterSpacing: -0.3.sp,
                                        color: Color(0xffEC1C24),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 71.w,
                                  ),
                                  Container(
                                    width: 82.w,
                                    height: 35.13.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEC1C24),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        SizedBox(
                                          width: 14.w,
                                          height: 13.43,child: Image.asset('assets/saver.png'),
                                        ),SizedBox(width: 5.w,),SizedBox(
                                          width: 41.w,
                                          height: 25.83.h,
                                          child: Text(
                                            'SAVE',
                                            style: GoogleFonts.poppins(
                                              textStyle:TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30,
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]))
                    ]))));
  }
}