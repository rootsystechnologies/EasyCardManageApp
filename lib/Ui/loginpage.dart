import 'package:easymanage/Ui/Widget/toastmessage.dart';
import 'package:easymanage/Ui/optionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Bloc/Login/login_bloc.dart';
import '../Repository/Modelclass/LoginModel.dart';

late LoginModel usermodel;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool move = true;
bool move1 = true;
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
final form_key = GlobalKey<FormState>();
String email1 = '';
String password1 = '';
String pattern = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?)*$";

class _LoginPageState extends State<LoginPage> {
  RegExp regex = RegExp(pattern);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
            child: Center(
                child: Container(
                    width: 318.w,
                    height: 427.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Form(
                      key: form_key,
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
                              height: 56.h,
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(right: 21.w, left: 21.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      move = !move;
                                      print(move);
                                    });
                                  },
                                  child: Stack(children: [
                                    AnimatedPositioned(
                                      duration: Duration(seconds: 1),
                                      child: Visibility(
                                        visible: move ? true : false,
                                        child: Container(
                                            width: 276.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              border: Border.all(
                                                  width: 1.w,
                                                  color: Color(0xffE4E4E4)),
                                            ),
                                            child: Row(children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 21.w,
                                                    top: 17.h,
                                                    bottom: 17.h,
                                                    right: 8.w,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    'assets/user.svg',
                                                    // Set the desired height
                                                  )),
                                              Text(
                                                "Email",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    height: 27 / 18.sp,
                                                    color: Color(0xffEC1C24),
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ])),
                                      ),
                                    ),
                                    Visibility(
                                      visible: move == false ? true : false,
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            border: Border.all(
                                                width: 1.w,
                                                color: Color(0xffE4E4E4)),
                                          ),
                                          width: 276.w,
                                          height: 60.h,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 20.w,
                                              top: 19.h,
                                            ),
                                            child: SizedBox(
                                              width: 250.w,
                                              height: 60.h,
                                              child: TextFormField(
                                                controller: email,
                                                autofocus: true,
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
                                                onChanged: (value) {
                                                  email.value =
                                                      TextEditingValue(
                                                    text: value.trim(),
                                                    selection: email.selection,
                                                  );
                                                },
                                                decoration: InputDecoration(
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,errorBorder:InputBorder.none,
                                                    hintText: 'Email',
                                                    hintStyle:
                                                        GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        height: 27 / 18.sp,
                                                        color:
                                                            Color(0xffD9D9D9),
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          )),
                                    )
                                  ]),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(right: 21.w, left: 21.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      move1 = !move1;
                                      print(move1);
                                    });
                                  },
                                  child: Stack(children: [
                                    AnimatedPositioned(
                                      duration: Duration(seconds: 1),
                                      child: Visibility(
                                        visible: move1 ? true : false,
                                        child: Container(
                                            width: 276.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              border: Border.all(
                                                  width: 1.w,
                                                  color: Color(0xffE4E4E4)),
                                            ),
                                            child: Row(children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 21.w,
                                                    top: 17.h,
                                                    bottom: 17.h,
                                                    right: 8.w,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    'assets/lock.svg',
                                                    // Set the desired height
                                                  )),
                                              Text(
                                                "Password",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    height: 27 / 18.sp,
                                                    color: Color(0xffEC1C24),
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ])),
                                      ),
                                    ),
                                    Visibility(
                                      visible: move1 == false ? true : false,
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            border: Border.all(
                                                width: 1.w,
                                                color: Color(0xffE4E4E4)),
                                          ),
                                          width: 276.w,
                                          height: 60.h,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 20.w,
                                              top: 19.h,
                                            ),
                                            child: SizedBox(
                                              width: 250.w,
                                              height: 60.h,
                                              child: TextFormField(
                                                controller: password,
                                                autofocus: true,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Field Should Not Be Empty';
                                                  }
                                                  return null;
                                                },
                                                onSaved: (value) {
                                                  password1 =
                                                      value!.trimRight();
                                                },
                                                decoration: InputDecoration(errorBorder:InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    hintText: 'Password',
                                                    hintStyle:
                                                        GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        height: 27 / 18.sp,
                                                        color:
                                                            Color(0xffD9D9D9),
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          )),
                                    )
                                  ]),
                                )),
                            SizedBox(
                              height: 38.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 164.w, right: 25.w),
                              child: Text('Forgot Password ?',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      height: 20 / 13.sp,
                                      color: Color(0xffC0C0C0),
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Container(
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
                                width: 318.w,
                                height: 69.h,
                                padding: EdgeInsets.only(
                                    left: 113.w,
                                    top: 16.h,
                                    bottom: 15.h,
                                    right: 114.w),
                                child: BlocListener<LoginBloc, LoginState>(
                                  listener: (context, state) {
                                    if (state is LoginblocLoaded) {
                                      usermodel =
                                          BlocProvider.of<LoginBloc>(context)
                                              .loginModel;
                                      userInfo(
                                          usermodel.token.toString(),
                                          usermodel.user!.name.toString(),
                                          usermodel.user!.email.toString());
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OptionScreen()),
                                          (route) => false);
                                    }
                                    if (state is LoginblocLoading) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext a) => const Center(
                                              child:
                                                  CircularProgressIndicator()));
                                    }
                                    if (state is LoginblocError) {
                                      Navigator.of(context).pop();
                                    }
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      if(email.text.isEmpty||password.text.isEmpty){
                                        ToastMessage().toastmessage(message: 'Fields Should Not Be Empty');
                                      }
                                      final isvalid =
                                          form_key.currentState?.validate();
                                      if (isvalid == true&&email.text.isNotEmpty&&password.text.isNotEmpty) {
                                        form_key.currentState?.save();
                                        BlocProvider.of<LoginBloc>(context).add(
                                            FetchLogin(
                                                email: email.text,
                                                password: password.text));
                                      }
                                    },
                                    child: Container(
                                      width: 91.w,
                                      height: 38.h,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFF0000),
                                          borderRadius:
                                              BorderRadius.circular(7.r)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 11.w,
                                          ),
                                          Text('Log In',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    height: 24 / 16.sp,
                                                    color: Colors.white,
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -0.3.sp),
                                              )),
                                          SizedBox(
                                            width: 1.19.w,
                                          ),
                                          SizedBox(
                                            width: 17.81.w,
                                            height: 16.77.h,
                                            child: Image.asset(
                                                "assets/loginicon.png"),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                          ]),
                    )))));
  }

  void userInfo(String token, String name, String email) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('Token', token);
    await preferences.setString('Name', name);
    await preferences.setString('Email', email);
  }
}
