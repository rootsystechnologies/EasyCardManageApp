import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/getallcustomers/getallcustomersapi.dart';

import '../../Repository/modelclass/Getallcustomers.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'get_all_customers_event.dart';
part 'get_all_customers_state.dart';

class GetAllCustomersBloc extends Bloc<GetAllCustomersEvent, GetAllCustomersState> {
  late  Getallcustomers getallcustomers;
  GetAllCustomersApi getAllCustomersApi =GetAllCustomersApi();
  GetAllCustomersBloc() : super(GetAllCustomersInitial()) {
    on<FetchGetAllCustomers>((event, emit) async{
      emit(GetAllCustomersblocLoading());
      try{
        getallcustomers = await getAllCustomersApi.getallcustomers(event.searchKey,event.page);
        emit(GetAllCustomersblocLoaded());
      } catch(e){
        if(e.toString()=='Unauthenticated.'){
          final preferences = await SharedPreferences.getInstance();
          preferences.clear().then((value) => exit(0));
        }else{
        ToastMessage().toastmessage(message:e.toString());}

        print('*****$e');
        emit(GetAllCustomersblocError());
      }
    });
  }
}
