import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/UpdateProfile/updateprofile_api.dart';
import '../../Repository/modelclass/ChangePasswordModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'update_name_event.dart';
part 'update_name_state.dart';

class UpdateNameBloc extends Bloc<UpdateNameEvent, UpdateNameState> {
  late  ChangePasswordModel changePasswordModel;
  UpdateProfileApi updateProfileApi =UpdateProfileApi();
  UpdateNameBloc() : super(UpdateNameInitial()) {
    on<FetchChangeName>((event, emit)async {
      emit(ChangeNameblocLoading());
      try{
        changePasswordModel = await updateProfileApi.updateName(event.name);
        emit(ChangeNameblocLoaded());
      } catch(e){
        if(e.toString()=='Unauthenticated.'){
          final preferences = await SharedPreferences.getInstance();
          preferences.clear().then((value) => exit(0));
        }else{
          ToastMessage().toastmessage(message:e.toString());}
        print('*****$e');
        emit(ChangeNameblocError());
      }
    });
  }
}
