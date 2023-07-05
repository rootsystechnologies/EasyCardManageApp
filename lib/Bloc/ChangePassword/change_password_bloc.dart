import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/ChangePassword/changepassword_api.dart';
import '../../Repository/modelclass/ChangePasswordModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  late  ChangePasswordModel changePasswordModel;
  ChangePasswordApi changePasswordApi =ChangePasswordApi();
  ChangePasswordBloc() : super(ChangePasswordInitial()) {
    on<FetchChangePassword>((event, emit)async {
      emit(ChangePasswordblocLoading());
      try{
        changePasswordModel = await changePasswordApi.changePassword(event.password);
        emit(ChangePasswordblocLoaded());
      } catch(e){
        ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(ChangePasswordblocError());
      }
    });
  }
}
