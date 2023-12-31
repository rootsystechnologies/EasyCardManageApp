import 'package:easymanage/Ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/toastmessage.dart';
import 'addcustomerfeature.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({Key? key}) : super(key: key);

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

late FocusNode _focusNode1;
bool _isFocused1 = false;
late FocusNode _focusNode2;
bool _isFocused2 = false;
late FocusNode _focusNode3;
bool _isFocused3 = false;
late FocusNode _focusNode4;
bool _isFocused4 = false;
late FocusNode _focusNode5;
bool _isFocused5 = false;
late FocusNode _focusNode6;
bool _isFocused6 = false;
late FocusNode _focusNode7;
bool _isFocused7 = false;
late FocusNode _focusNode8;
bool _isFocused8 = false;
TextEditingController name = TextEditingController();
TextEditingController mobile = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController opbalance = TextEditingController();
TextEditingController creditlimit = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController passwordconfirmation = TextEditingController();
TextEditingController place = TextEditingController();
final form_key = GlobalKey<FormState>();
String name1 = '';
String mobile1 = '';
String email1 = '';
String opbalance1 = '';
String creditlimit1 = '';
String password1 = '';
String confirmpassword1 = '';
String place1 = '';
String pattern = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?)*$";

class _AddNewCustomerState extends State<AddNewCustomer> {
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
    _focusNode3 = FocusNode();
    _focusNode3.addListener(() {
      setState(() {
        _isFocused3 = _focusNode3.hasFocus;
      });
    });
    _focusNode4 = FocusNode();
    _focusNode4.addListener(() {
      setState(() {
        _isFocused4 = _focusNode4.hasFocus;
      });
    });
    _focusNode5 = FocusNode();
    _focusNode5.addListener(() {
      setState(() {
        _isFocused5 = _focusNode5.hasFocus;
      });
    });
    _focusNode6 = FocusNode();
    _focusNode6.addListener(() {
      setState(() {
        _isFocused6 = _focusNode6.hasFocus;
      });
    });
    _focusNode7 = FocusNode();
    _focusNode7.addListener(() {
      setState(() {
        _isFocused7 = _focusNode7.hasFocus;
      });
    });
    _focusNode8 = FocusNode();
    _focusNode8.addListener(() {
      setState(() {
        _isFocused8 = _focusNode8.hasFocus;
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
    _focusNode7.dispose();
    _focusNode8.dispose();
    name.clear();
    mobile.clear();
    email.clear();
    opbalance.clear();
    creditlimit.clear();
    password.clear();
    passwordconfirmation.clear();
    place.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    RegExp regex = RegExp(pattern);
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
                child: Form(
                  key: form_key,
                  child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 41.h,
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 26.w),
                          //   child: TextButton(
                          //       onPressed: () {
                          //         Navigator.of(context).pop();
                          //       },
                          //       child: SizedBox(
                          //         width: 37.062.w,
                          //         height: 37.062.h,
                          //         child: Image.asset('assets/arrowback.png'),
                          //       )),
                          // ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 17.w, right: 17.w),
                            width: 326.w,
                            height: 730.h,
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
                                    children: [ Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: IconButton(
                                        icon: ImageIcon(
                                          AssetImage('assets/arrowback.png'),
                                          color: Colors.black,
                                          size: 30.sp,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.w,
                                          top: 19.h,
                                          bottom: 24.87.h,
                                          right: 5.w,
                                        ),
                                        child: SizedBox(
                                            width: 34.w,
                                            height: 34.h,
                                            child: Image.asset(
                                                'assets/option2.png')),
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
                                    height: 575.h,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10.13.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: name,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Field Should Not Be Empty';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                name1 = value!;
                                              },
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16.w, right: 17.w),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.0.h),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: _isFocused8 == false
                                                    ? Color(0xffD9D9D9)
                                                    : Color(
                                                        0xffFF0000), // Change border color based on focus
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Field Should Not Be Empty';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                place1 = value!;
                                              },
                                              controller: place,
                                              focusNode: _focusNode8,
                                              decoration: InputDecoration(
                                                hintText: 'Place',
                                                hintStyle: TextStyle(
                                                  color: _isFocused8 == false
                                                      ? Color(0xffEC1C24)
                                                      : Color(0xffA4A4A4),
                                                  letterSpacing: -0.3.sp,
                                                  fontSize: _isFocused8 == false
                                                      ? 15.0.sp
                                                      : 13.0
                                                          .sp, // Change hint text size based on focus
                                                ),
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              keyboardType: TextInputType.phone,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: mobile,
                                              focusNode: _focusNode2,
                                              validator: (value) {
                                                if (value!.length < 10) {
                                                  return 'Invalid Phone Number';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                mobile1 = value!;
                                              },
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: email,
                                              focusNode: _focusNode3,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.trim().isEmpty ||
                                                    !regex.hasMatch(value)) {
                                                  return 'Invalid email';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                email1 = value!.trim();
                                                value.replaceAll(
                                                    RegExp(r'\s+'), '');
                                              },
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              keyboardType: TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: opbalance,
                                              focusNode: _focusNode4,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Invalid Amount';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                opbalance1 = value!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: 'Opening Balance',
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              keyboardType: TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: creditlimit,
                                              focusNode: _focusNode5,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Invalid Amount';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                creditlimit1 = value!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: 'Credit Limit',
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
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
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: password,
                                              focusNode: _focusNode6,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Field Should Not Be Empty';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                password1 = value!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: 'Password',
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
                                          SizedBox(
                                            height: 27.h,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16.w, right: 17.w),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.0.h),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: _isFocused7 == false
                                                    ? Color(0xffD9D9D9)
                                                    : Color(
                                                        0xffFF0000), // Change border color based on focus
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: TextFormField(
                                              obscureText: true,
                                              controller: passwordconfirmation,
                                              focusNode: _focusNode7,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Field Should Not Be Empty';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                confirmpassword1 = value!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: 'Password Confirmation',
                                                hintStyle: TextStyle(
                                                  color: _isFocused7 == false
                                                      ? Color(0xffEC1C24)
                                                      : Color(0xffA4A4A4),
                                                  letterSpacing: -0.3.sp,
                                                  fontSize: _isFocused7 == false
                                                      ? 15.0.sp
                                                      : 13.0
                                                          .sp, // Change hint text size based on focus
                                                ),
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 27.h,
                                          )
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
                                  child: GestureDetector(
                                    onTap: () {
                                      final isvalid =
                                          form_key.currentState?.validate();
                                      if (isvalid == true &&
                                          password.text ==
                                              passwordconfirmation.text) {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    AddCustomerFeature(
                                                      opbalance: opbalance.text,
                                                      email: email.text,
                                                      mobile: mobile.text,
                                                      password: password.text,
                                                      name: name.text,
                                                      passwordConfirmation:
                                                          passwordconfirmation
                                                              .text,
                                                      creditLimit:
                                                          creditlimit.text,
                                                      place: place.text,
                                                    )));
                                      }
                                      else if(passwordconfirmation.text!=password.text){
                                        ToastMessage().toastmessage(message: 'Password Should Not Match ');
                                      }
                                      else{
                                        ToastMessage().toastmessage(message: 'Fields Should Not Be Empty');
                                      }
                                    },
                                    child: Center(
                                      child: Container(
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
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                ))));
  }
}
