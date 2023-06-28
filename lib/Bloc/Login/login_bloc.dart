

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


import '../../Repository/Modelclass/LoginModel.dart';
import '../../Repository/api/Login/login_api.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late  LoginModel loginModel;
  LoginApi loginApi =LoginApi();
  LoginBloc() : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async{
      emit(LoginblocLoading());
      try{
        loginModel = await loginApi.postuserdata(event.email,event.password);
        emit(LoginblocLoaded());
      } catch(e){
        ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(LoginblocError());
      }

    });
  }
}