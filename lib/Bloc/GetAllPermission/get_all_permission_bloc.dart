

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


import '../../Repository/api/GetAllPermission/getallpermission.dart';
import '../../Repository/modelclass/GetAllPermission.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'get_all_permission_event.dart';
part 'get_all_permission_state.dart';

class GetAllPermissionBloc extends Bloc<GetAllPermissionEvent, GetAllPermissionState> {
  late  GetAllPermission getAllPermission;
  GetAllPermissionApi getAllPermissionApi =GetAllPermissionApi();
  String error='';
  GetAllPermissionBloc() : super(GetAllPermissionInitial()) {
    on<FetchGetAllPermission>((event, emit)async {
      emit(GetAllPermissionblocLoading());
      try{
        getAllPermission = await getAllPermissionApi.getallpermission();
        emit(GetAllPermissionblocLoaded());
      } catch(e){
        error=e.toString();
          ToastMessage().toastmessage(message:e.toString());

        print('*****$e');
        emit(GetAllPermissionblocError());
      }
    });
  }
}
