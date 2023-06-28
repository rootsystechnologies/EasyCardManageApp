import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/getallcustomers/getallcustomersapi.dart';
import '../../Repository/modelclass/getallcustomers.dart';
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
        getallcustomers = await getAllCustomersApi.getallcustomers();
        emit(GetAllCustomersblocLoaded());
      } catch(e){
        ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(GetAllCustomersblocError());
      }
    });
  }
}
