import 'package:easymanage/Ui/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Bloc/GetAllCustomers/get_all_customers_bloc.dart';
import '../Repository/modelclass/Getallcustomers.dart';
import 'customercollectamount.dart';
import 'customerwalletrecharge.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  State<Customers> createState() => _CustomersState();
}

bool move = true;
int page = 1;
int total = 0;
int perPage = 0;
int totalPage = 0;
late Getallcustomers customers;
TextEditingController search = TextEditingController();

class _CustomersState extends State<Customers> {
  @override
  void initState() {
    BlocProvider.of<GetAllCustomersBloc>(context)
        .add(FetchGetAllCustomers(searchKey: '', page: page.toString()));
    super.initState();
  }

  @override
  void dispose() {
    search.clear();
    page = 1;
    move = true;
    super.dispose();
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
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8.w, right: 8.w),
                      width: 500.w,
                      height: 737.h,
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
                            width: 500.w,
                            height: 74.h,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 27.w),
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
                                    left: 25.w,
                                    top: 23.h,
                                    bottom: 23.h,
                                    right: 5.w,
                                  ),
                                  child: SizedBox(
                                      width: 29.w,
                                      height: 28.h,
                                      child: Image.asset(
                                          'assets/customerscreen.png')),
                                ),
                                SizedBox(
                                    width: 125.082.w,
                                    height: 26.87.h,
                                    child: Text(
                                      'Customers',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          letterSpacing: -0.3.sp,
                                          color: Color(0xffEC1C24),
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                move = !move;
                                print(move);
                              });
                            },
                            child: Stack(
                              children: [
                                Visibility(
                                  visible: move ? true : false,
                                  child: AnimatedPositioned(
                                    duration: Duration(seconds: 1),
                                    child: Container(
                                      width: 293.w,
                                      height: 51.h,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: Color(0xffD9D9D9))),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 16.w,
                                          ),
                                          SizedBox(
                                              width: 20.w,
                                              height: 20.h,
                                              child: Image.asset(
                                                  'assets/search.png')),
                                          SizedBox(
                                            height: 28.h,
                                            child: VerticalDivider(
                                              color: Color(0xffEC1C24),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 9.w,
                                          ),
                                          SizedBox(
                                              width: 127.w,
                                              height: 27.h,
                                              child: Text(
                                                "Search",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    letterSpacing: -0.3.sp,
                                                    color: Color(0xffEC1C24),
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: move == false ? true : false,
                                  child: Container(
                                    width: 293.w,
                                    height: 51.h,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: Color(0xffD9D9D9))),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                      ),
                                      child: SizedBox(
                                        width: 250.w,
                                        height: 60.h,
                                        child: TextFormField(
                                          controller: search,
                                          textInputAction: TextInputAction.done,
                                          onFieldSubmitted: (value) {
                                            BlocProvider.of<
                                                        GetAllCustomersBloc>(
                                                    context)
                                                .add(FetchGetAllCustomers(
                                                    searchKey: search.text,
                                                    page: page.toString()));
                                          },
                                          onChanged: (value) {
                                            BlocProvider.of<
                                                        GetAllCustomersBloc>(
                                                    context)
                                                .add(FetchGetAllCustomers(
                                                    searchKey: search.text,
                                                    page: page.toString()));
                                          },
                                          autofocus: true,
                                          decoration: InputDecoration(
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: Color(0xffD9D9D9),
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w300,
                                                    letterSpacing: -0.3.sp),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.w, right: 6.w),
                            width: 500.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                color: Color(0xffEC1C24),
                                borderRadius: BorderRadius.circular(7.r)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 3.w),
                                  child: SizedBox(
                                      width: 87.w,
                                      height: 35.h,
                                      child: Center(
                                        child: Text(
                                          "Customer",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: -0.3.sp),
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                    width: 75.w,
                                    height: 35.h,
                                    child: Text(
                                      "Wallet Balance",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.3.sp),
                                      ),
                                    )),
                                SizedBox(
                                    width: 80.w,
                                    height: 35.h,
                                    child: Text(
                                      "Outstanding Balance",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.3.sp),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          BlocBuilder<GetAllCustomersBloc,
                              GetAllCustomersState>(
                            builder: (context, state) {
                              if (state is GetAllCustomersblocLoading) {
                                return Container(
                                  width: 326.w,
                                  height: 407.5.h,
                                  child: Center(
                                    child: SizedBox(
                                      height: 30.h,
                                      width: 30.w,
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                );
                              }
                              if (state is GetAllCustomersblocError) {
                                String error =
                                    BlocProvider.of<GetAllCustomersBloc>(
                                            context)
                                        .error;
                                if (error == 'Unauthenticated.') {
                                  return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            5.0), // Set the desired border radius
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                Text(
                                                  'Token Expired',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    final preferences =
                                                        await SharedPreferences
                                                            .getInstance();
                                                    preferences.clear();
                                                    Navigator.of(context)
                                                        .pushAndRemoveUntil(
                                                            MaterialPageRoute(
                                                                builder: (BuildContext
                                                                        a) =>
                                                                    LoginPage()),
                                                            (route) => false);
                                                  },
                                                  child: Container(
                                                    width: 80.w,
                                                    height: 30.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4)),
                                                    child: Center(
                                                      child: Text(
                                                        "Login",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ])));
                                } else {
                                  return RefreshIndicator(
                                    onRefresh: () async {
                                      return BlocProvider.of<
                                              GetAllCustomersBloc>(context)
                                          .add(FetchGetAllCustomers(
                                              searchKey: '',
                                              page: page.toString()));
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
                              }
                              if (state is GetAllCustomersblocLoaded) {
                                customers =
                                    BlocProvider.of<GetAllCustomersBloc>(
                                            context)
                                        .getallcustomers;
                                total = customers.customers!.total!;
                                perPage = customers.customers!.perPage!;
                                totalPage = (total / perPage).ceil();
                                if (customers.customers!.data!.isEmpty) {
                                  return Container(
                                      width: 326.w,
                                      height: 447.5.h,
                                      child: Center(
                                        child: Text("No Data"),
                                      ));
                                } else {
                                  return Container(
                                    width: 326.w,
                                    height: 447.5.h,
                                    child: ListView.separated(
                                      itemCount:
                                          customers.customers!.data!.length + 1,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        if (index <
                                            customers.customers!.data!.length) {
                                          return Row(
                                            children: [
                                              SizedBox(
                                                height: 50.h,
                                                width: 75.w,
                                                child: Center(
                                                  child: Text(
                                                      customers.customers!
                                                          .data![index].name
                                                          .toString(),
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              color: Color(
                                                                  0xffA4A4A4),
                                                              fontSize: 12.sp,
                                                              letterSpacing:
                                                                  -0.3.sp))
                                                  ,maxLines: 2,overflow: TextOverflow.ellipsis,),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              SizedBox(
                                                width: 62.w,
                                                height: 21.h,
                                                child: Center(
                                                  child: Text(
                                                      customers
                                                          .customers!
                                                          .data![index]
                                                          .wallet!
                                                          .balance
                                                          .toString(),
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              color: Color(
                                                                  0xffA4A4A4),
                                                              fontSize: 14.sp,
                                                              letterSpacing:
                                                                  -0.3.sp))),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.w,
                                              ),
                                              SizedBox(
                                                  width: 62.w,
                                                  height: 21.h,
                                                  child: Center(
                                                      child: Text(
                                                          customers
                                                              .customers!
                                                              .data![index]
                                                              .balanceToCollect
                                                              .toString(),
                                                          style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  color: Color(
                                                                      0xffA4A4A4),
                                                                  fontSize:
                                                                      14.sp,
                                                                  letterSpacing:
                                                                      -0.3.sp))))),
                                              SizedBox(
                                                width: 15.w,
                                              ),
                                              GestureDetector(
                                                onTap: () => Navigator.of(
                                                        context)
                                                    .push(MaterialPageRoute(
                                                        builder: (_) =>
                                                            CustomerCollectAmount(
                                                              customerName:
                                                                  customers
                                                                      .customers!
                                                                      .data![
                                                                          index]
                                                                      .name
                                                                      .toString(),
                                                              userId: customers
                                                                  .customers!
                                                                  .data![index]
                                                                  .id
                                                                  .toString(),
                                                            ))),
                                                child: SizedBox(
                                                  height: 30.h,
                                                  width: 30.w,
                                                  child: Image.asset(
                                                      'assets/customer1.png'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.29.w,
                                              ),
                                              GestureDetector(
                                                onTap: () => Navigator.of(
                                                        context)
                                                    .push(MaterialPageRoute(
                                                        builder: (_) =>
                                                            CustomerWalletRecharge(
                                                              userId: customers
                                                                  .customers!
                                                                  .data![index]
                                                                  .id
                                                                  .toString(),
                                                              customerName:
                                                                  customers
                                                                      .customers!
                                                                      .data![
                                                                          index]
                                                                      .name
                                                                      .toString(),
                                                            ))),
                                                child: SizedBox(
                                                  height: 30.h,
                                                  width: 30.w,
                                                  child: Image.asset(
                                                      'assets/customer2.png'),
                                                ),
                                              )
                                            ],
                                          );
                                        } else {
                                          return Visibility(
                                            visible: search.text.isEmpty
                                                ? true
                                                : false,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Visibility(
                                                  visible:
                                                      page != 1 ? true : false,
                                                  child: TextButton(
                                                      onPressed: () {
                                                        if (page >= 1) {
                                                          page = page - 1;
                                                          BlocProvider.of<
                                                                      GetAllCustomersBloc>(
                                                                  context)
                                                              .add(FetchGetAllCustomers(
                                                                  searchKey: '',
                                                                  page: page
                                                                      .toString()));
                                                        }
                                                      },
                                                      child: Text("Previous")),
                                                ),
                                                SizedBox(
                                                  width: 150.w,
                                                ),
                                                Visibility(
                                                  visible: page == totalPage
                                                      ? false
                                                      : true,
                                                  child: TextButton(
                                                      onPressed: () {
                                                        if (page <= totalPage) {
                                                          page = page + 1;
                                                          BlocProvider.of<
                                                                      GetAllCustomersBloc>(
                                                                  context)
                                                              .add(FetchGetAllCustomers(
                                                                  searchKey: '',
                                                                  page: page
                                                                      .toString()));
                                                        }
                                                      },
                                                      child: Text("Next")),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            left: 11.w,
                                            right: 9.w,
                                            top: 10.48.h,
                                          ),
                                          child: Divider(
                                            color: Color(0xffD9D9D9),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                }
                              } else {
                                return SizedBox();
                              }
                            },
                          ),
                          SizedBox(
                            height: 10.52.h,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 697.h,
                      left: 9.w,
                      right: 9.w,
                      child: Container(
                        width: 500.w,
                        height: 39.h,
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
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
