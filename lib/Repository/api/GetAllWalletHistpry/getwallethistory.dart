import 'dart:convert';
import 'package:http/http.dart';




import '../../modelclass/WalletHistoryModel.dart';
import '../apiclient.dart';


class GetAllWalletApi {
  ApiClient apiClient = ApiClient();

  Future<WalletHistoryModel> getallwallet(String fromDate, String toDate,String search,String particular,bool forAll,int userId,int page,bool pagination,int option) async {
    String isofrom="${fromDate}T00:00:00.000000Z";
    String isoTo="${toDate}T23:59:59.000000Z";
    String trendingPath='';
    if(option==1){
      trendingPath ='/collector/customer/wallet/history?page=$page';
    }
    else if(option==2){
      trendingPath="/collector/customer/wallet/history?from_date=$isofrom&to_date=$isoTo";
    }
    else{
      trendingPath="/collector/customer/wallet/history?from_date=$isofrom&to_date=$isoTo&userId=$userId";
    }
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return WalletHistoryModel.fromJson(json.decode(response.body));
  }
}