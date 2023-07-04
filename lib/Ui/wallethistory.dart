import 'package:easymanage/Ui/wallethistorywalletrecharge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../Bloc/GetAllCustomers/get_all_customers_bloc.dart';
import '../Repository/modelclass/Getallcustomers.dart';

class WalletHistory extends StatefulWidget {
  const WalletHistory({Key? key}) : super(key: key);

  @override
  State<WalletHistory> createState() => _WalletHistoryState();
}

bool isExpanded = false;
bool isExpanded1 = false;
bool isExpanded2 = false;
bool isExpanded3 = false;
late Getallcustomers customers;
bool move = true;
TextEditingController search = TextEditingController();
final DateFormat formatter = DateFormat('yyyy-MM-dd');
String userName = '';
DateTime fromDate = DateTime.now();
DateTime toDate = DateTime.now();
class _WalletHistoryState extends State<WalletHistory> {
  @override
  void initState() {
    BlocProvider.of<GetAllCustomersBloc>(context)
        .add(FetchGetAllCustomers(searchKey: search.text));
    super.initState();
  }
  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != fromDate) {
      setState(() {
        fromDate = pickedDate;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != toDate) {
      setState(() {
        toDate = pickedDate;
      });
    }
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
                height: 26.h,
              ),
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 21.w, right: 21.w),
                      width: 337.w,
                      height: 663.h,
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
                                    child: Image.asset('assets/customer2.png')),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 16.22.h, bottom: 14.35.h),
                                child: SizedBox(
                                    width: 160.39.w,
                                    height: 32.43.h,
                                    child: Text(
                                      'Wallet History',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          letterSpacing: -0.3.sp,
                                          color: Color(0xffEC1C24),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )),
                              ),
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
                                      borderRadius: BorderRadius.circular(7.r)),
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.w),
                                              child: GestureDetector(  onTap: () {
                                                _selectFromDate(context);
                                              },
                                                child: SizedBox(
                                                  width: 86.w,
                                                  height: 26.h,
                                                  child: Text(
                                                    "From Date",
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
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 6.w, right: 9.77.w),
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
                                        width: 200.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),child: Center(
                                        child: Text(
                                            formatter.format(fromDate)),
                                      ),
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
                                      borderRadius: BorderRadius.circular(7.r)),
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 31.w),
                                              child: GestureDetector( onTap: () {
                                                _selectToDate(context);
                                              },
                                                child: SizedBox(
                                                  width: 64.w,
                                                  height: 26.h,
                                                  child: Text(
                                                    "To Date",
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
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 17.w, right: 9.77.w),
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
                                        width: 200.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),child: Center(
                                        child: Text(
                                            formatter.format(toDate)),
                                      ),
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
                          padding: EdgeInsets.only(left: 18.w, right: 20.w),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFFEC1C24),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.r)),
                            ),
                            width: 299.w,
                            // Replace with your desired width
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                              "Particular",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.30.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 63.w, right: 9.77.w),
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
                                    width: 299.w,
                                    height: 174.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Column(
                                      children: [
                                   SizedBox(height: 16.h,),SizedBox(width: 135.w,height: 27.h,child: Text(
                                          'Cash Collected',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            textStyle:TextStyle(
                                            color: Color(0xFF00B94A),
                                            fontSize: 18.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.30.sp,
                                          )),
                                        ),),SizedBox(height: 14.h,),SizedBox(width: 89.w,height: 27.h,child:Text(
                                          'Cash Paid',
                                          textAlign: TextAlign.center,
                                          style:GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                            color: Color(0xFFEC1C24),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.30,
                                          ),)
                                        ) ,),SizedBox(height: 14.h,),SizedBox(width: 21.w,height: 27.h,child: Text(
                                          'All',
                                          textAlign: TextAlign.center,
                                          style:GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.30,
                                          ),)
                                        ),)
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.w, right: 20.w),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFFEC1C24),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.r)),
                            ),
                            width: 299.w,
                            // Replace with your desired width
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  height: 36.h,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isExpanded3 = !isExpanded3;
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
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.30.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 63.w, right: 9.77.w),
                                            child: SizedBox(
                                                height: 10.8.h,
                                                width: 10.8.w,
                                                child: Image.asset(isExpanded3
                                                    ? 'assets/arrowdown.png'
                                                    : 'assets/arrowforward.png'))),
                                      ],
                                    ),
                                  ),
                                ),
                                if (isExpanded3)
                                  Container(
                                    width: 299.w,
                                    height: 174.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                    ),child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
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
                                                duration:
                                                Duration(seconds: 1),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 51.w,
                                                      right: 50.w,
                                                      top: 8.h),
                                                  width: 198.w,
                                                  height: 32.h,
                                                  decoration: BoxDecoration(
                                                      color: Colors
                                                          .transparent,
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.r),
                                                      border: Border.all(
                                                          color: Color(
                                                              0xffD9D9D9))),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 16.w,
                                                      ),
                                                      SizedBox(
                                                          width: 13.52.w,
                                                          height: 12.55.h,
                                                          child: Image.asset(
                                                              'assets/search.png')),
                                                      SizedBox(
                                                        height: 17.5.h,
                                                        child:
                                                        VerticalDivider(
                                                          color: Color(
                                                              0xffEC1C24),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 9.w,
                                                      ),
                                                      SizedBox(
                                                          width: 85.82.w,
                                                          height: 16.94.h,
                                                          child: Text(
                                                            "Search",
                                                            style:
                                                            GoogleFonts
                                                                .poppins(
                                                              textStyle:
                                                              TextStyle(
                                                                letterSpacing:
                                                                -0.3.sp,
                                                                color: Color(
                                                                    0xffEC1C24),
                                                                fontSize:
                                                                10.sp,
                                                              ),
                                                            ),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Visibility(
                                              visible: move == false
                                                  ? true
                                                  : false,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 51.w,
                                                    right: 50.w,
                                                    top: 8.h),
                                                width: 198.w,
                                                height: 32.h,
                                                decoration: BoxDecoration(
                                                    color:
                                                    Colors.transparent,
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(8.r),
                                                    border: Border.all(
                                                        color: Color(
                                                            0xffD9D9D9))),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 17.w,
                                                  ),
                                                  child: SizedBox(
                                                    width: 198.w,
                                                    height: 32.h,
                                                    child: TextFormField(
                                                      onChanged: (value) {
                                                        BlocProvider.of<
                                                            GetAllCustomersBloc>(
                                                            context)
                                                            .add(FetchGetAllCustomers(
                                                            searchKey:
                                                            search
                                                                .text));
                                                      },
                                                      controller: search,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                          focusedBorder:
                                                          InputBorder
                                                              .none,
                                                          enabledBorder:
                                                          InputBorder
                                                              .none,
                                                          hintText:
                                                          'Search',
                                                          hintStyle:
                                                          GoogleFonts
                                                              .poppins(
                                                            textStyle: TextStyle(
                                                                color: Color(
                                                                    0xffD9D9D9),
                                                                fontSize: 10
                                                                    .sp,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                letterSpacing:
                                                                -0.3.sp),
                                                          )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(child: BlocBuilder<
                                          GetAllCustomersBloc,
                                          GetAllCustomersState>(
                                          builder: (context, state) {
                                            if (state
                                            is GetAllCustomersblocLoading) {
                                              return SizedBox();
                                            }
                                            if (state
                                            is GetAllCustomersblocError) {
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  return BlocProvider.of<
                                                      GetAllCustomersBloc>(
                                                      context)
                                                      .add(FetchGetAllCustomers(
                                                      searchKey: ''));
                                                },
                                                child: SingleChildScrollView(
                                                  physics:
                                                  const BouncingScrollPhysics(),
                                                  child: Container(
                                                      height:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                          .9,
                                                      // color: Colors.red,
                                                      child: Center(
                                                          child:
                                                          Text("Error"))),
                                                ),
                                              );
                                            }
                                            if (state
                                            is GetAllCustomersblocLoaded) {
                                              customers = BlocProvider.of<
                                                  GetAllCustomersBloc>(
                                                  context)
                                                  .getallcustomers;
                                              return ListView.separated(
                                                itemCount: customers
                                                    .customers!.data!.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 17.w),
                                                    child: SizedBox(
                                                      height: 24.h,
                                                      width: 120.w,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          userName = customers
                                                              .customers!
                                                              .data![index]
                                                              .name
                                                              .toString();
                                                        },
                                                        child: Text(
                                                          customers.customers!
                                                              .data![index].name
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .poppins(
                                                              textStyle:
                                                              TextStyle(
                                                                color: Color(
                                                                    0xFFA3A3A3),
                                                                fontSize: 16.sp,
                                                                fontFamily:
                                                                'Poppins',
                                                                fontWeight:
                                                                FontWeight.w400,
                                                                letterSpacing:
                                                                -0.30,
                                                              )),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                separatorBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return SizedBox(
                                                    height: 2.h,
                                                  );
                                                },
                                              );
                                            } else {
                                              return SizedBox();
                                            }
                                          }))
                                    ],
                                  ),
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
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.30.sp,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 14.w,
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
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.30.sp,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: 21.w,
                            ),
                            SizedBox(
                              height: 17.h,
                              width: 70.w,
                              child: Text('Particular',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Color(0xFFEC1C24),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.30.sp,
                                  ))),
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            SizedBox(
                              height: 21.h,
                              width: 55.84.w,
                              child: Text('Amount',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Color(0xFFEC1C24),
                                    fontSize: 11.sp,
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
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 59.w,
                                    height: 17.h,
                                    child: Text(' Customer 01',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xFFA3A3A3),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ))),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  SizedBox(
                                    width: 64.w,
                                    height: 17.h,
                                    child: Text('DD-YY-MM',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xFFA3A3A3),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ))),
                                  ),
                                  SizedBox(
                                    width: 47.w,
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                    height: 17.h,
                                    child: Text('Paid',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xffFF0000),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30.sp,
                                        ))),
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  SizedBox(
                                    width: 42.w,
                                    height: 17.h,
                                    child: Text('1234 Sar',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xFFA3A3A3),
                                          fontSize: 11.sp,
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
                      ]))),
                  Positioned(
                    top: 592.h,
                    left: 22.w,
                    right: 21.w,
                    child: Container(
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
                            left: 71.w, right: 73.w, top: 15.h, bottom: 13.h),
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) =>
                                      WalletHistoryWalletRecharge())),
                          child: Container(
                            width: 183.w,
                            height: 43.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEC1C24),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 13.w,
                                      top: 8.h,
                                      bottom: 9.h,
                                      right: 3.w),
                                  child: SizedBox(
                                    width: 23.w,
                                    height: 26.h,
                                    child: Image.asset(
                                        'assets/walletrecharge.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 128.w,
                                  height: 26.h,
                                  child: Text('Wallet Recharge',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.30.sp,
                                      ))),
                                )
                              ],
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
