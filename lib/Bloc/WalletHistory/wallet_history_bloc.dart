import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/GetAllWalletHistpry/getwallethistory.dart';
import '../../Repository/modelclass/WalletHistoryModel.dart';
import '../../Ui/Widget/toastmessage.dart';

part 'wallet_history_event.dart';

part 'wallet_history_state.dart';

class WalletHistoryBloc extends Bloc<WalletHistoryEvent, WalletHistoryState> {
  late WalletHistoryModel walletHistoryModel;
  GetAllWalletApi getAllCollectionApi = GetAllWalletApi();
  String error = '';

  WalletHistoryBloc() : super(WalletHistoryInitial()) {
    on<FetchGetAllWallet>((event, emit) async {
      emit(GetAllWalletblocLoading());
      try {
        walletHistoryModel = await getAllCollectionApi.getallwallet(
            event.fromDate,
            event.toDate,
            event.search,
            event.particular,
            event.forAll,
            event.userId,
            event.page,event.pagination);
        emit(GetAllWalletblocLoaded());
      } catch (e) {
        error = e.toString();
        ToastMessage().toastmessage(message: e.toString());

        print('*****$e');
        emit(GetAllWalletblocError());
      }
    });
  }
}
