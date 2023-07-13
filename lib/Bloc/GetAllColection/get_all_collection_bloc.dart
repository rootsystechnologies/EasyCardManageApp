import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Repository/api/GetAllCollection/getAllCollection_api.dart';
import '../../Repository/modelclass/GetAllCollectionModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'get_all_collection_event.dart';
part 'get_all_collection_state.dart';

class GetAllCollectionBloc extends Bloc<GetAllCollectionEvent, GetAllCollectionState> {
  late  GetAllCollectionModel getAllCollectionModel;
  GetAllCollectionApi getAllCollectionApi =GetAllCollectionApi();
  String error='';
  GetAllCollectionBloc() : super(GetAllCollectionInitial()) {
    on<FetchGetAllCollection>((event, emit)async{
      emit(GetAllCollectionblocLoading());
      try{
        getAllCollectionModel = await getAllCollectionApi.getallCollections(event.fromDate, event.toDate, event.userId,event.forAll,event.page);
        emit(GetAllCollectionblocLoaded());
      } catch(e){
        error=e.toString();
          ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(GetAllCollectionblocError());
      }
    });
  }
}
