import 'package:easymanage/Bloc/CreateCustomer/create_customer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bloc/GetAllPermission/get_all_permission_bloc.dart';
import '../Repository/modelclass/GetAllPermission.dart';
import 'Widget/toastmessage.dart';
import 'aftersavecustomerdetails.dart';

class AddCustomerFeature extends StatefulWidget {
  final String name;
  final String mobile;
  final String email;
  final String opbalance;
  final String creditLimit;
  final String password;
  final String passwordConfirmation;
  final String place;

  const AddCustomerFeature(
      {Key? key,
      required this.opbalance,
      required this.email,
      required this.mobile,
      required this.password,
      required this.name,
      required this.passwordConfirmation,
      required this.creditLimit,required this.place})
      : super(key: key);

  @override
  State<AddCustomerFeature> createState() => _AddCustomerFeatureState();
}

List<bool> values = [];
bool allowall = false;
List<String> allowedPerms = [];
late GetAllPermission permisson;

class _AddCustomerFeatureState extends State<AddCustomerFeature> {
  @override
  void initState() {
    BlocProvider.of<GetAllPermissionBloc>(context).add(FetchGetAllPermission());
    super.initState();
  }

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
                            BlocBuilder<GetAllPermissionBloc,
                                GetAllPermissionState>(
                              builder: (context, state) {
                                if (state is GetAllPermissionblocLoading) {
                                  return CircularProgressIndicator();
                                }
                                if (state is GetAllPermissionblocError) {
                                  return RefreshIndicator(
                                    onRefresh: () async {
                                      return BlocProvider.of<
                                              GetAllPermissionBloc>(context)
                                          .add(FetchGetAllPermission());
                                    },
                                    child: SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .9,
                                          // color: Colors.red,
                                          child: Center(child: Text("Error"))),
                                    ),
                                  );
                                }
                                if (state is GetAllPermissionblocLoaded) {
                                  permisson =
                                      BlocProvider.of<GetAllPermissionBloc>(
                                              context)
                                          .getAllPermission;
                                  for (int i = 0;
                                      i <= permisson.perms!.length;
                                      i++) {
                                    values.add(false);
                                  }

                                  return Container(
                                    width: 326.w,
                                    height: 519.h,
                                    child: ListView.separated(
                                      itemCount: permisson.perms!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {

                                        print(allowedPerms);
                                        return Container(
                                          height: 29.67.h,
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                side: MaterialStateBorderSide
                                                    .resolveWith(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .selected)) {
                                                      return const BorderSide(
                                                          color: Color(
                                                              0xffEC1C24));
                                                    }
                                                    return const BorderSide(
                                                        color:
                                                            Color(0xffD9D9D9));
                                                  },
                                                ),
                                                activeColor: Colors.white,
                                                checkColor: Color(0xffEC1C24),
                                                value: values[index],
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    values[index] = value!;
                                                    if (values[index] == true) {
                                                      allowedPerms.add(permisson
                                                          .perms![index].id
                                                          .toString());
                                                    }
                                                    if(values[index]==false){
                                                      allowedPerms.remove(permisson
                                                          .perms![index].id
                                                          .toString());
                                                    }
                                                  });
                                                },
                                              ),
                                              Container(
                                                width: 273.w,
                                                child: Text(
                                                  permisson.perms![index].code
                                                      .toString(),
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      letterSpacing: -0.3.sp,
                                                      color: values[index] ==
                                                              false
                                                          ? Color(0xffD9D9D9)
                                                          : Colors.red,
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
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
                                  );
                                } else {
                                  return SizedBox();
                                }
                              },
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
                                  GestureDetector(
                                      onTap: () => setState(() {
                                            allowall = !allowall;
                                            if (allowall == true) {
                                              values = List<bool>.generate(
                                                  permisson.perms!.length,
                                                  (index) => true);

                                            } else {
                                              values = List<bool>.generate(
                                                  permisson.perms!.length,
                                                  (index) => false);
                                            }
                                            ;
                                          }),
                                      child: SizedBox(
                                        width: 24.w,
                                        height: 24.w,
                                        child: Image.asset(allowall == false
                                            ? "assets/a1.png"
                                            : 'assets/a2.png'),
                                      )),
                                  SizedBox(
                                    width: 11.w,
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
                                  BlocListener<CreateCustomerBloc,
                                      CreateCustomerState>(
                                    listener: (context, state) {
                                      if (state is createCustomerblocLoaded) {
                                        Navigator.of(context).pop();
                                        ToastMessage().toastmessage(message: "New Customer Created SuccessFully");
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    AfterSaveCustomer(
                                                      password: widget.password,
                                                      mobile: widget.mobile,
                                                      email: widget.email,
                                                      opbalance:
                                                          widget.opbalance,
                                                      creditLimit:
                                                          widget.creditLimit,
                                                      passwordConfirmation: widget
                                                          .passwordConfirmation,
                                                      name: widget.name,
                                                      allowedPerms:
                                                          allowedPerms, place: widget.place,
                                                    )));
                                      }
                                      if (state is createCustomerblocLoading) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext a) =>
                                                const Center(
                                                    child:
                                                        CircularProgressIndicator()));
                                      }
                                      if (state is createCustomerblocError) {
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: GestureDetector(
                                      onTap: () => BlocProvider.of<
                                              CreateCustomerBloc>(context)
                                          .add(FecthCreateCustomer(
                                              passwordConfirmation:
                                                  widget.passwordConfirmation,
                                              password: widget.password,
                                              creditLimit: widget.creditLimit,
                                              mobile: widget.mobile,
                                              email: widget.email,
                                              name: widget.name,
                                              allowedPerms: allowedPerms,
                                              opbalance: widget.opbalance, place:widget.place)),
                                      child: Container(
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
                                              height: 13.43,
                                              child: Image.asset(
                                                  'assets/saver.png'),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            SizedBox(
                                              width: 41.w,
                                              height: 25.83.h,
                                              child: Text(
                                                'SAVE',
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
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
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]))
                    ]))));
  }
}
