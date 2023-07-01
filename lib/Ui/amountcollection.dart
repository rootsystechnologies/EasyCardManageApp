import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bloc/GetAllColection/get_all_collection_bloc.dart';
import '../Repository/modelclass/GetAllCollectionModel.dart';
import 'amountcollectioncollectamount.dart';

class AmountCollection extends StatefulWidget {
  const AmountCollection({Key? key}) : super(key: key);

  @override
  State<AmountCollection> createState() => _AmountCollectionState();
}

bool move = true;
TextEditingController search = TextEditingController();
TextEditingController toDate = TextEditingController();
TextEditingController fromDate = TextEditingController();
late GetAllCollectionModel collections;
class _AmountCollectionState extends State<AmountCollection> {
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool isExpanded2 = false;
@override
  void initState() {
  BlocProvider.of<GetAllCollectionBloc>(
      context)
      .add(FetchGetAllCollection(search: search.text, toDate: toDate.text, fromDate: fromDate.text));
    super.initState();
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
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
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
                                          Expanded(
                                              child: ListView.separated(
                                            itemCount: 9,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Padding(
                                                padding:
                                                    EdgeInsets.only(left: 17.w),
                                                child: SizedBox(
                                                  height: 24.h,
                                                  width: 120.w,
                                                  child: Text(
                                                    'Johnadam',
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                      color: Color(0xFFA3A3A3),
                                                      fontSize: 16.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.30,
                                                    )),
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
                                          ))
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
                          BlocBuilder<GetAllCollectionBloc,
                              GetAllCollectionState>(
                            builder: (context, state) {
                              if (state is GetAllCollectionblocLoading) {
                                return CircularProgressIndicator();
                              }
                              if (state is GetAllCollectionblocError) {
                                return RefreshIndicator(
                                  onRefresh: () async {
                                    return BlocProvider.of<GetAllCollectionBloc>(
                                            context)
                                        .add(FetchGetAllCollection(search: search.text, toDate: toDate.text, fromDate: fromDate.text));
                                  },
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .9,
                                        // color: Colors.red,
                                        child: Center(child: Text("Error"))),
                                  ),
                                );
                              }
                              if (state is GetAllCollectionblocLoaded) {
                                collections =
                                    BlocProvider.of<GetAllCollectionBloc>(
                                            context).getAllCollectionModel;
                                return SizedBox(
                                  height: 318.h,
                                  width: 337.w,
                                  child: ListView.separated(
                                    itemCount: collections.collections!.data!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        children: [
                                          SizedBox(
                                            width: 93.w,
                                            height: 21.h,
                                            child: Text(collections.collections!.data![index].userId.toString(),
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
                                            child: Text(collections.collections!.data![index].collectedAmount.toString(),
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
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                  ),
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
            ])));
  }
}
