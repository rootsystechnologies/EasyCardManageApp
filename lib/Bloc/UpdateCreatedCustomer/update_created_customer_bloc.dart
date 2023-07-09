import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/UpdateCreatedCustomer/updatecreatedcustomer_api.dart';
import '../../Repository/modelclass/UpdateCreatedCustomer.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'update_created_customer_event.dart';

part 'update_created_customer_state.dart';

class UpdateCreatedCustomerBloc
    extends Bloc<UpdateCreatedCustomerEvent, UpdateCreatedCustomerState> {
  late UpdateCreatedCustomer updateCreatedCustomer;
  UpdateCreatedCustomerApi updateCreatedCustomerApi =
      UpdateCreatedCustomerApi();
  String error = '';

  UpdateCreatedCustomerBloc() : super(UpdateCreatedCustomerInitial()) {
    on<FetchUpdateCustomer>((event, emit) async {
      emit(UpdateCreatedCustomerblocLoading());
      try {
        updateCreatedCustomer =
            await updateCreatedCustomerApi.updateCreatedCustomer(event.userId,
                event.name, event.mobile, event.email, event.credit,event.openingBalance,event.place);
        emit(UpdateCreatedCustomerblocLoaded());
      } catch (e) {
        error = e.toString();
        ToastMessage().toastmessage(message: e.toString());
        print('*****$e');
        emit(UpdateCreatedCustomerblocError());
      }
    });
  }
}
