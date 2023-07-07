import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/Recharge/recharge_api.dart';
import '../../Repository/modelclass/RechargeModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'recharge_event.dart';
part 'recharge_state.dart';

class RechargeBloc extends Bloc<RechargeEvent, RechargeState> {
  late  RechargeModel rechargeModel;
  RechargeApi rechargeApi =RechargeApi();
  RechargeBloc() : super(RechargeInitial()) {
    on<FetchRechargeAmount>((event, emit)async {
      emit(RechargeblocLoading());
      try{
        rechargeModel = await rechargeApi.rechargeAmount(event.userId, event.amount,event.pin);
        emit(RechargeblocLoaded());
      } catch(e){
        if(e.toString()=='Unauthenticated.'){
          final preferences = await SharedPreferences.getInstance();
          preferences.clear().then((value) => exit(0));
        }else{
          ToastMessage().toastmessage(message:e.toString());}

        print('*****$e');
        emit(RechargeblocError());
      }
    });
  }
}
