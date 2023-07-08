import 'package:easymanage/Bloc/UpdateCreatedCustomer/update_created_customer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bloc/UpdateName/update_name_bloc.dart';
import 'Widget/toastmessage.dart';
import 'optionscreen.dart';

class EditCustomer extends StatefulWidget {
  final String name;
  final String phone;
  final String email;
  final String creditLimit;
  final String userId;
  const EditCustomer({super.key,required this.name,required this.email,required this.creditLimit,required this.phone,required this.userId});

  @override
  State<EditCustomer> createState() => _EditCustomerState();
}
bool usernameEdit = false;
bool phoneEdit = false;
bool emailEdit = false;
bool creditLimitEdit = false;
TextEditingController userName = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController credit = TextEditingController();
class _EditCustomerState extends State<EditCustomer> {
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
                child: BlocListener<UpdateCreatedCustomerBloc, UpdateCreatedCustomerState>(
  listener: (context, state) {
    if (state is UpdateCreatedCustomerblocLoaded) {
      Navigator.of(context).pop();
      ToastMessage().toastmessage(
          message: 'Customer Updated SuccessFully');
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
              const OptionScreen()),
              (route) =>
          false);
    }
    if (state is UpdateCreatedCustomerblocLoading) {
      showDialog(
          context: context,
          builder: (BuildContext a) => const Center(
              child: CircularProgressIndicator()));
    }
    if (state is UpdateCreatedCustomerblocError) {
      Navigator.of(context).pop();
    }
  },
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
                        height: 76.94.h,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 17.w, right: 17.w),
                          width: 326.w,
                          height: 490.h,
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
                              height: 68.h,
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
                                        width: 149.w,
                                        height: 30.41.h,
                                        child: Center(
                                          child: Text(
                                            'Update Details',
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
                              height: 26.h,
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
                              child: usernameEdit == false
                                  ? Row(
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
                                          widget.name,
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        usernameEdit = !usernameEdit;
                                      });
                                    },
                                    child: SizedBox(
                                      width: 19.w,
                                      height: 19.h,
                                      child: Image.asset('assets/edit.png'),
                                    ),
                                  )
                                ],
                              )
                                  : TextField(
                                autofocus: true,
                                controller: userName,
                                decoration: InputDecoration(
                                  suffix: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<UpdateCreatedCustomerBloc>(context).add(
                                         FetchUpdateCustomer(userId: widget.userId, name: userName.text, email: widget.email, credit: widget.creditLimit, mobile: widget.phone));
                                      },
                                      child: Text(
                                        'Update',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                  hintText: widget.name,
                                  hintStyle: TextStyle(
                                    color: Color(0xffA4A4A4),
                                    letterSpacing: -0.3.sp,
                                    fontSize: 13.0
                                        .sp, // Change hint text size based on focus
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 34.h,
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
                              child: emailEdit == false
                                  ? Row(
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
                                          widget.email,
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
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      emailEdit = !emailEdit;
                                    }),
                                    child: SizedBox(
                                      width: 19.w,
                                      height: 19.h,
                                      child: Image.asset('assets/edit.png'),
                                    ),
                                  )
                                ],
                              )
                                  : TextField(
                                autofocus: true,
                                controller: email,
                                decoration: InputDecoration(suffix: GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<UpdateCreatedCustomerBloc>(context).add(
                                          FetchUpdateCustomer(userId: widget.userId, name: widget.name, email: email.text, credit: widget.creditLimit, mobile: widget.phone));
                                    },
                                    child: Text(
                                      'Update',
                                      style: TextStyle(color: Colors.red),
                                    )),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Color(0xffA4A4A4),
                                    letterSpacing: -0.3.sp,
                                    fontSize: 13.0
                                        .sp, // Change hint text size based on focus
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),SizedBox(
                              height: 34.h,
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
                              child: phoneEdit == false
                                  ? Row(
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
                                          widget.phone,
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
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      phoneEdit = !phoneEdit;
                                    }),
                                    child: SizedBox(
                                      width: 19.w,
                                      height: 19.h,
                                      child: Image.asset('assets/edit.png'),
                                    ),
                                  )
                                ],
                              )
                                  : TextField(
                                autofocus: true,
                                controller: phone,
                                decoration: InputDecoration(suffix: GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<UpdateCreatedCustomerBloc>(context).add(
                                          FetchUpdateCustomer(userId: widget.userId, name: widget.name, email: widget.email, credit: widget.creditLimit, mobile: phone.text));
                                    },
                                    child: Text(
                                      'Update',
                                      style: TextStyle(color: Colors.red),
                                    )),
                                  hintText: 'Phone',
                                  hintStyle: TextStyle(
                                    color: Color(0xffA4A4A4),
                                    letterSpacing: -0.3.sp,
                                    fontSize: 13.0
                                        .sp, // Change hint text size based on focus
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            Container(
                              width: 293.w,
                              height: 51.h,
                              margin: EdgeInsets.only(left: 17.w, right: 16.w),
                              padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffD9D9D9)
                                    // Change border color based on focus
                                    ),
                                borderRadius: BorderRadius.circular(9.0.r),
                              ),
                              child:creditLimitEdit == false
                                  ?  Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.w,
                                      top: 13.h,
                                      bottom: 11.h,
                                    ),
                                    child: SizedBox(
                                        width: 169.w,
                                        height: 27.h,
                                        child: Text(
                                          'Credit Limit - ${widget.creditLimit} Sar',
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
                                    width: 54.w,
                                  ),
                                  GestureDetector(onTap: () => setState(() {
                                    creditLimitEdit = !creditLimitEdit;
                                  }),
                                    child: SizedBox(
                                      width: 19.w,
                                      height: 19.h,
                                      child: Image.asset('assets/edit.png'),
                                    ),
                                  )
                                ],
                              ):TextField(
                                autofocus: true,
                                controller: credit,
                                decoration: InputDecoration(
                                  suffix: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<UpdateCreatedCustomerBloc>(context).add(
                                            FetchUpdateCustomer(userId: widget.userId, name: widget.name, email: widget.email, credit: credit.text, mobile:widget.phone));
                                      },
                                      child: Text(
                                        'Update',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                  hintText: 'Cred Limit',
                                  hintStyle: TextStyle(
                                    color: Color(0xffA4A4A4),
                                    letterSpacing: -0.3.sp,
                                    fontSize: 13.0
                                        .sp, // Change hint text size based on focus
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
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
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 122.w,
                                    right: 122.w,
                                    top: 13.h,
                                    bottom: 13.h),
                                width: 82.w,
                                height: 34.h,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFEC1C24),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    SizedBox(
                                        width: 14.w,
                                        height: 13.h,
                                        child: Image.asset('assets/saver.png')),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    SizedBox(
                                      width: 41.w,
                                      height: 25.h,
                                      child: Text(
                                        'SAVE',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.3.sp),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]))
                    ]),
))));
  }
}
