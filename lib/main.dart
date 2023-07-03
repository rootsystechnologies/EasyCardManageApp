import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bloc/CollectAmount/collect_amount_bloc.dart';
import 'Bloc/CreateCustomer/create_customer_bloc.dart';
import 'Bloc/GetAllColection/get_all_collection_bloc.dart';
import 'Bloc/GetAllCustomers/get_all_customers_bloc.dart';
import 'Bloc/GetAllPermission/get_all_permission_bloc.dart';
import 'Bloc/Login/login_bloc.dart';
import 'Bloc/Recharge/recharge_bloc.dart';
import 'Ui/loginpage.dart';

String basePath = 'http://easycard.rootsys.in/api';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
      builder: (context, child) =>
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LoginBloc(),
              ),
              BlocProvider(
                create: (context) => GetAllCustomersBloc(),
              ),BlocProvider(
                create: (context) => GetAllPermissionBloc(),
              ),BlocProvider(
                create: (context) => CreateCustomerBloc(),
              ),BlocProvider(
                create: (context) => CollectAmountBloc(),
              ),BlocProvider(
                create: (context) => GetAllCollectionBloc(),
              ),BlocProvider(
                create: (context) => RechargeBloc(),
              ),
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: LoginPage()),
          ),
    );
  }
}
