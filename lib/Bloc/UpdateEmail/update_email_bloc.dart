

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/UpdateProfile/updateprofile_api.dart';
import '../../Repository/modelclass/ChangePasswordModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'update_email_event.dart';
part 'update_email_state.dart';

class UpdateEmailBloc extends Bloc<UpdateEmailEvent, UpdateEmailState> {
  late  ChangePasswordModel changePasswordModel;
  UpdateProfileApi updateProfileApi =UpdateProfileApi();
  UpdateEmailBloc() : super(UpdateEmailInitial()) {
    on<FetchChangeEmail>((event, emit)async {
      emit(ChangeEmailblocLoading());
      try{
        changePasswordModel = await updateProfileApi.updateEmail(event.email);
        emit(ChangeEmailblocLoaded());
      } catch(e){
        if(e.toString()=='Unauthenticated.'){
          final preferences = await SharedPreferences.getInstance();
          preferences.clear().then((value) => exit(0));
        }else{
          ToastMessage().toastmessage(message:e.toString());}

        print('*****$e');
        emit(ChangeEmailblocError());
      }
    });
  }
}
