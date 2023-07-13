import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/GetAllCollectionModel.dart';
import '../apiclient.dart';


class GetAllCollectionApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllCollectionModel> getallCollections(String fromDate, String toDate,int userId,bool forAll, int page,int option) async {
    String isofrom="${fromDate}T00:00:00.000000Z";
    String isoTo="${toDate}T23:59:59.000000Z";
    String trendingPath='';
    if(option==1){
      trendingPath = "/collector/collect/all?page=$page";
    }
    else if(option==2){
      trendingPath = "/collector/collect/all?from_date=$isofrom&to_date=$isoTo";
    }
else{
  trendingPath = "/collector/collect/all?from_date=$isofrom&to_date=$isoTo&userId=$userId";
}

    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return GetAllCollectionModel.fromJson(json.decode(response.body));
  }
}