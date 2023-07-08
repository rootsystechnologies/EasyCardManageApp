import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/ChangePin/change_pin_api.dart';
import '../../Repository/modelclass/ChangePasswordModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'change_pin_event.dart';
part 'change_pin_state.dart';

class ChangePinBloc extends Bloc<ChangePinEvent, ChangePinState> {
  late  ChangePasswordModel changePasswordModel;
  ChangePinApi changePinApi =ChangePinApi();
  String error='';
  ChangePinBloc() : super(ChangePinInitial()) {
    on<FetchChangePin>((event, emit)async {
      emit(ChangePinblocLoading());
      try{
        changePasswordModel = await changePinApi.changePin(event.oldPin,event.newPin );
        emit(ChangePinblocLoaded());
      } catch(e){
        error=e.toString();
          ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(ChangePinblocError());
      }
    });
  }
}
