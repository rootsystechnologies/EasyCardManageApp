import 'package:easymanage/Bloc/ChangePassword/change_password_bloc.dart';
import 'package:easymanage/Ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/toastmessage.dart';
import 'optionscreen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

late FocusNode _focusNode1;

bool _isFocused1 = false;
late FocusNode _focusNode2;
bool _isFocused2 = false;
bool isExpanded = false;
late FocusNode _focusNode3;
bool _isFocused3 = false;
TextEditingController oldPassword = TextEditingController();
TextEditingController newPassword = TextEditingController();
TextEditingController confirmPassword = TextEditingController();

class _ChangePasswordState extends State<ChangePassword> {
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
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
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
                      height: 390.h,
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
                          height: 60.h,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 68.w,
                                    top: 14.h,
                                    bottom: 13.94.h,
                                    right: 2.w),
                                child: SizedBox(
                                    width: 29.w,
                                    height: 34.h,
                                    child: Image.asset('assets/password.png')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 17.h, bottom: 17.h, left: 10.w),
                                child: SizedBox(
                                    width: 178.w,
                                    height: 26.h,
                                    child: Text(
                                      'Change Password',
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
                              controller: oldPassword,
                              focusNode: _focusNode1,
                              decoration: InputDecoration(
                                hintText: 'Old Password',
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
                          height: 26.h,
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
                              controller: newPassword,
                              focusNode: _focusNode2,
                              decoration: InputDecoration(
                                hintText: 'New Password',
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
                          height: 26.h,
                        ),
                        FocusScope(
                          child: Container(
                            margin: EdgeInsets.only(left: 16.w, right: 17.w),
                            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _isFocused3 == false
                                    ? Color(0xffD9D9D9)
                                    : Color(
                                        0xffFF0000), // Change border color based on focus
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextField(
                              controller: confirmPassword,
                              focusNode: _focusNode3,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
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
                      ]))),
                  Positioned(
                    top: 328.h,
                    left: 21.w,
                    right: 22.w,
                    child: Container(
                      width: 326.w,
                      height: 60.h,
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
                      child: Center(
                        child: BlocListener<ChangePasswordBloc,
                            ChangePasswordState>(
                          listener: (context, state) {
                            if (state is ChangePasswordblocLoaded) {
                              Navigator.of(context).pop();
                              ToastMessage().toastmessage(
                                  message: 'Password Changed SuccessFully');
                            }
                            if (state is ChangePasswordblocLoading) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext a) => const Center(
                                      child: CircularProgressIndicator()));
                            }
                            if (state is ChangePasswordblocError) {
                              Navigator.of(context).pop();
                            }
                          },
                          child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<ChangePasswordBloc>(context).add(
                                  FetchChangePassword(password: newPassword.text));
                            },
                            child: Container(
                              width: 82.w,
                              height: 34.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFFEC1C24),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.w,
                                        top: 10.h,
                                        bottom: 11.h,
                                        right: 4.w),
                                    child: SizedBox(
                                      height: 13.h,
                                      width: 14.w,
                                      child: Image.asset('assets/saver.png'),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 41.w,
                                      height: 25.h,
                                      child: Text(
                                        'SAVE',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            letterSpacing: -0.3.sp,
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
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
