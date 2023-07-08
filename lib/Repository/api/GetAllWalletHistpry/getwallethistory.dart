import 'dart:convert';
import 'package:http/http.dart';




import '../../modelclass/WalletHistoryModel.dart';
import '../apiclient.dart';


class GetAllWalletApi {
  ApiClient apiClient = ApiClient();

  Future<WalletHistoryModel> getallwallet(String fromDate, String toDate,String search,String particular,bool forAll,int userId) async {
    String trendingPath='';
    if(forAll==false){
      trendingPath="/collector/customer/wallet/history?from_date=$fromDate&to_date=$toDate&particular=$particular&userId=$userId";}
    else{
      trendingPath ='/collector/customer/wallet/history';
    }
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return WalletHistoryModel.fromJson(json.decode(response.body));
  }
}