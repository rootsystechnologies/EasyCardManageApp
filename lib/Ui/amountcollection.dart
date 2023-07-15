import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Bloc/GetAllColection/get_all_collection_bloc.dart';
import '../Bloc/GetAllCustomers/get_all_customers_bloc.dart';
import '../Repository/modelclass/GetAllCollectionModel.dart';
import '../Repository/modelclass/Getallcustomers.dart';
import 'Widget/toastmessage.dart';
import 'package:intl/intl.dart';

import 'amountcollectioncollectamount.dart';
import 'loginpage.dart';

class AmountCollection extends StatefulWidget {
  const AmountCollection({Key? key}) : super(key: key);

  @override
  State<AmountCollection> createState() => _AmountCollectionState();
}

Getallcustomers? customers;
bool move = true;
int page = 1;
TextEditingController search = TextEditingController();
late GetAllCollectionModel collections;
final DateFormat formatter = DateFormat('yyyy-MM-dd');
String userName = '';
String error = '';

String convertISODate(String isoDate) {
  DateTime date = DateTime.parse(isoDate);
  String formattedDate = DateFormat('dd-MM-yyyy').format(date);
  return formattedDate;
}

int userId = 0;
int total = 0;
int perpage=0;
num totalPage=0;

class _AmountCollectionState extends State<AmountCollection> {
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();

  @override
  void initState() {
    BlocProvider.of<GetAllCollectionBloc>(context).add(FetchGetAllCollection(
        userId: 0, toDate: '', fromDate: '', forAll: true, page: page, option: 1));
    BlocProvider.of<GetAllCustomersBloc>(context).add(
        FetchGetAllCustomers(searchKey: search.text, page: page.toString()));
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
  void dispose() {
    move = true;
    search.clear();
    userName = '';
    page=1;
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
            child:
                SafeArea(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      margin: EdgeInsets.only(left: 21.w, right: 21.w),
                      width: 337.w,
                      height: 735.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: SingleChildScrollView(
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
                                children: [ Padding(
                                  padding: EdgeInsets.only(left: 18.w),
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
                                        left: 15.w,
                                        top: 14.h,
                                        bottom: 13.94.h,
                                        right: 2.w),
                                    child: SizedBox(
                                        width: 35.06.w,
                                        height: 35.06.h,
                                        child: Image.asset('assets/option3.png')),
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
                                              // setState(() {
                                              //   isExpanded = !isExpanded;
                                              // });
                                              _selectFromDate(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 16.w),
                                                  child: SizedBox(
                                                    width: 86.w,
                                                    height: 26.h,
                                                    child: FittedBox(
                                                      child: Text(
                                                        fromDate == null
                                                            ? "From Date"
                                                            : formatter
                                                                .format(fromDate),
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
                                            padding: EdgeInsets.all(8.h),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border:
                                                  Border.all(color: Colors.grey),
                                            ),
                                            child: Center(
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
                                              // setState(() {
                                              //   isExpanded1 = !isExpanded1;
                                              // });
                                              _selectToDate(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 16.w),
                                                  child: SizedBox(
                                                    width: 86.w,
                                                    height: 26.h,
                                                    child: FittedBox(
                                                      child: Text(
                                                        toDate == null
                                                            ? "To Date"
                                                            : formatter
                                                                .format(toDate),
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
                                            width: 200.w,
                                            height: 50.h,
                                            padding: EdgeInsets.all(8.h),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border:
                                                  Border.all(color: Colors.grey),
                                            ),
                                            child: Center(
                                              child:
                                                  Text(formatter.format(toDate)),
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
                            Stack(
                              children: [
                                Container(
                                  height: 545.h,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 45.h,
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
                                      BlocBuilder<GetAllCollectionBloc, GetAllCollectionState>(
                                        builder: (context, state) {
                                          if (state is GetAllCollectionblocLoading) {
                                            return Container(
                                              height: 318.h,
                                              width: 337.w,
                                              child: Center(
                                                child: SizedBox(
                                                  height: 30.h,
                                                  width: 30.w,
                                                  child: CircularProgressIndicator(),
                                                ),
                                              ),
                                            );
                                          }
                                          if (state is GetAllCollectionblocError) {
                                            if (error == 'Unauthenticated.') {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5.0),
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
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      TextButton(
                                                        onPressed: () async {
                                                          final preferences = await SharedPreferences.getInstance();
                                                          preferences.clear();
                                                          Navigator.of(context).pushAndRemoveUntil(
                                                            MaterialPageRoute(builder: (BuildContext a) => LoginPage()),
                                                                (route) => false,
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 80.w,
                                                          height: 30.h,
                                                          decoration: BoxDecoration(
                                                            color: Colors.red,
                                                            borderRadius: BorderRadius.circular(4),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "Login",
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            } else {
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  return BlocProvider.of<GetAllCollectionBloc>(context).add(
                                                    FetchGetAllCollection(
                                                      userId: userId,
                                                      toDate: toDate.toString(),
                                                      fromDate: fromDate.toString(),
                                                      forAll: true, page: page, option: 1,
                                                    ),
                                                  );
                                                },
                                                child: SingleChildScrollView(
                                                  physics: const BouncingScrollPhysics(),
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height * 0.9,
                                                    child: Center(
                                                      child: Text("Error"),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                          }
                                          if (state is GetAllCollectionblocLoaded) {
                                            collections = BlocProvider.of<GetAllCollectionBloc>(context).getAllCollectionModel;
                                            total=collections.collections!.total!;
                                            perpage=collections.collections!.perPage!;
                                            totalPage=(total/perpage).ceil();

                                            print(totalPage);
                                            return Container(
                                              height: 412.h,
                                              width: 337.w,
                                              child: collections.collections!.data!.isEmpty
                                                  ? Center(
                                                child: Text("No Data"),
                                              )
                                                  : ListView.separated(
                                                itemCount: collections.collections!.data!.length + 1,
                                                itemBuilder: (BuildContext context, int index) {
                                                  if (index < collections.collections!.data!.length) {
                                                    String formattedDate = convertISODate(collections.collections!.data![index].createdAt!);
                                                    return Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 93.w,
                                                          height: 21.h,
                                                          child: Text(
                                                            collections.collections!.data![index].user!.name.toString(),
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                color: Color(0xFFA3A3A3),
                                                                fontSize: 14.sp,
                                                                fontWeight: FontWeight.w400,
                                                                letterSpacing: -0.30.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 24.w,
                                                        ),
                                                        SizedBox(
                                                          width: 93.w,
                                                          height: 21.h,
                                                          child: Text(
                                                            formattedDate,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                color: Color(0xFFA3A3A3),
                                                                fontSize: 14.sp,
                                                                fontWeight: FontWeight.w400,
                                                                letterSpacing: -0.30.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 44.w,
                                                        ),
                                                        SizedBox(
                                                          width: 62.w,
                                                          height: 21.h,
                                                          child: Text(
                                                            collections.collections!.data![index].collectedAmount.toString(),
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                color: Color(0xFFA3A3A3),
                                                                fontSize: 14.sp,
                                                                fontWeight: FontWeight.w400,
                                                                letterSpacing: -0.30.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  } else {
                                                    // Return the widget for the additional row at the end
                                                    return Visibility(
                                                      visible: search.text.isEmpty,
                                                      child: Padding(
                                                        padding: EdgeInsets.only(bottom: 0.h),
                                                        child: Row(
                                                          children: [
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            Visibility(
                                                              visible: page != 1,
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  if (page >= 1) {
                                                                    page = page - 1;
                                                                    BlocProvider.of<GetAllCollectionBloc>(context).add(
                                                                      FetchGetAllCollection(
                                                                        userId: 0,
                                                                        toDate: '',
                                                                        fromDate: '',
                                                                        forAll: true, page: page, option: 1,
                                                                      ),
                                                                    );
                                                                  }
                                                                },
                                                                child: Text("Previous"),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 150.w,
                                                            ),
                                                            Visibility(
                                                              visible: page != totalPage,
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  if (page <= totalPage) {
                                                                    page = page + 1;
                                                                    BlocProvider.of<GetAllCollectionBloc>(context).add(
                                                                      FetchGetAllCollection(
                                                                        userId: 0,
                                                                        toDate: '',
                                                                        fromDate: '',
                                                                        forAll: true, page: page, option: 1,
                                                                      ),
                                                                    );
                                                                  }
                                                                },
                                                                child: Text("Next"),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                },
                                                separatorBuilder: (BuildContext context, int index) {
                                                  return Divider(
                                                    color: Color(0xffD9D9D9),
                                                  );
                                                },
                                              ),
                                            );
                                          }
                                          return SizedBox();
                                        },
                                      ),

                                      SizedBox(
                                        height: 18.h,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w, top: 8.h),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEC1C24),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.r)),
                                    ),
                                    width: 180.w,
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
                                                    left: 28.w,
                                                  ),
                                                  child: SizedBox(
                                                    width: 83.w,
                                                    height: 26.h,
                                                    child: FittedBox(
                                                      child: Text(
                                                        userName == ''
                                                            ? "Customer"
                                                            : userName,
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
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.w, right: 9.77.w),
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
                                            height: 350.h,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border:
                                                  Border.all(color: Colors.grey),
                                            ),
                                            child: Column(
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
                                                        visible:
                                                            move ? true : false,
                                                        child: AnimatedPositioned(
                                                          duration: Duration(
                                                              seconds: 1),
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 10.w,
                                                                    right: 10.w,
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
                                                                    width:
                                                                        13.52.w,
                                                                    height:
                                                                        12.55.h,
                                                                    child: Image
                                                                        .asset(
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
                                                                    width:
                                                                        85.82.w,
                                                                    height:
                                                                        16.94.h,
                                                                    child: Text(
                                                                      "Search",
                                                                      style: GoogleFonts
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
                                                              left: 10.w,
                                                              right: 10.w,
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
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 17.w,
                                                            ),
                                                            child: TextFormField(
                                                              onFieldSubmitted:
                                                                  (value) {
                                                                BlocProvider.of<
                                                                            GetAllCustomersBloc>(
                                                                        context)
                                                                    .add(FetchGetAllCustomers(
                                                                        searchKey:
                                                                            search
                                                                                .text,
                                                                        page: page
                                                                            .toString()));
                                                              },
                                                              onChanged: (value) {
                                                                BlocProvider.of<
                                                                            GetAllCustomersBloc>(
                                                                        context)
                                                                    .add(FetchGetAllCustomers(
                                                                        searchKey:
                                                                            search
                                                                                .text,
                                                                        page: page
                                                                            .toString()));
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
                                                                            fontWeight: FontWeight
                                                                                .w300,
                                                                            letterSpacing:
                                                                                -0.3.sp),
                                                                      )),
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
                                                                searchKey: '',
                                                                page: page
                                                                    .toString()));
                                                      },
                                                      child:
                                                          SingleChildScrollView(
                                                        physics:
                                                            const BouncingScrollPhysics(),
                                                        child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .9,
                                                            // color: Colors.red,
                                                            child: Center(
                                                                child: Text(
                                                                    "Error"))),
                                                      ),
                                                    );
                                                  }
                                                  if (state
                                                      is GetAllCustomersblocLoaded) {
                                                    customers = BlocProvider.of<
                                                                GetAllCustomersBloc>(
                                                            context)
                                                        .getallcustomers;
                                                    if (customers!.customers!
                                                        .data!.isEmpty) {
                                                      return Container(
                                                          width: 326.w,
                                                          height: 407.5.h,
                                                          child: Center(
                                                            child:
                                                                Text("No Data"),
                                                          ));
                                                    } else {
                                                      return ListView.separated(
                                                        itemCount: customers!
                                                            .customers!
                                                            .data!
                                                            .length,
                                                        itemBuilder:
                                                            (BuildContext context,
                                                                int index) {
                                                          return Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.w),
                                                            child: SizedBox(
                                                              height: 24.h,
                                                              width: 120.w,
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  userId = customers!
                                                                      .customers!
                                                                      .data![
                                                                          index]
                                                                      .id!;
                                                                  userName = customers!
                                                                      .customers!
                                                                      .data![
                                                                          index]
                                                                      .name
                                                                      .toString();
                                                                  if (userName
                                                                      .isNotEmpty) {
                                                                    setState(() {
                                                                      isExpanded2 =
                                                                          false;
                                                                    });
                                                                  }
                                                                },
                                                                child: Text(
                                                                  customers!
                                                                      .customers!
                                                                      .data![
                                                                          index]
                                                                      .name
                                                                      .toString(),
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                          textStyle:
                                                                              TextStyle(
                                                                    color: Color(
                                                                        0xFFA3A3A3),
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
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
                                                    }
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
                                Padding(
                                  padding: EdgeInsets.only(left: 190.w),
                                  child: TextButton(
                                      onPressed: () {
                                        if (userName == '') {
                                          BlocProvider.of<GetAllCollectionBloc>(
                                              context)
                                              .add(FetchGetAllCollection(
                                              userId: userId,
                                              toDate: formatter
                                                  .format(toDate)
                                                  .toString(),
                                              fromDate: formatter
                                                  .format(fromDate)
                                                  .toString(),
                                              forAll: false, page: page, option: 2));
                                        } else {
                                          BlocProvider.of<GetAllCollectionBloc>(
                                                  context)
                                              .add(FetchGetAllCollection(
                                                  userId: userId,
                                                  toDate: formatter
                                                      .format(toDate)
                                                      .toString(),
                                                  fromDate: formatter
                                                      .format(fromDate)
                                                      .toString(),
                                                  forAll: false, page: page, option: 3));
                                        }
                                      },
                                      child: Container(
                                        width: 100.w,
                                        height: 36.h,
                                        child: Center(
                                          child: Text(
                                            "Get",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.30.sp,
                                            )),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(7.r)),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top:662.h,
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
                              left: 75.w, right: 78.w, top: 15.h, bottom: 13.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AmountCollection1()));
                            },
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
                                    ),
                                    child: SizedBox(
                                      width: 23.w,
                                      height: 26.h,
                                      child: Image.asset('assets/collect.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
                                    height: 26.h,
                                    child: Text('Collect Amount',
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
              ),
            ]),
                )));
  }
}
