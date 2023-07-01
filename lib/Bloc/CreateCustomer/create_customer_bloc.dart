import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/CreateCustomer/createcustomer.dart';
import '../../Repository/modelclass/CreateCustomerModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'create_customer_event.dart';

part 'create_customer_state.dart';

class CreateCustomerBloc
    extends Bloc<CreateCustomerEvent, CreateCustomerState> {
  late CreateCustomerModel createCustomerModel;
  CreateCustomerApi createCustomerApi = CreateCustomerApi();

  CreateCustomerBloc() : super(CreateCustomerInitial()) {
    on<FecthCreateCustomer>((event, emit) async {
      emit(createCustomerblocLoading());
      try {
        createCustomerModel = await createCustomerApi.createCustomer(
            event.name,
            event.mobile,
            event.email,
            event.opbalance,
            event.creditLimit,
            event.password,
            event.passwordConfirmation,
            event.allowedPerms,event.place);
        emit(createCustomerblocLoaded());
      } catch (e) {
        ToastMessage().toastmessage(message: e.toString());

        print('*****$e');
        emit(createCustomerblocError());
      }
    });
  }
}
