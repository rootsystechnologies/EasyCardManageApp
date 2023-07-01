import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/CollectAmount/collectamount.dart';
import '../../Repository/modelclass/CollectAmount.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'collect_amount_event.dart';
part 'collect_amount_state.dart';

class CollectAmountBloc extends Bloc<CollectAmountEvent, CollectAmountState> {
  late  CollectAmount collectAmount;
  CollectApi loginApi =CollectApi();
  CollectAmountBloc() : super(CollectAmountInitial()) {
    on<FetchCollectAmount>((event, emit)async {
      emit(CollectblocLoading());
      try{
        collectAmount = await loginApi.collectAmount(event.userId, event.amount);
        emit(CollectblocLoaded());
      } catch(e){
        ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(CollectblocError());
      }
    });
  }
}
