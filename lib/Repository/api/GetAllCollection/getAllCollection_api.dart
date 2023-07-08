import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/GetAllCollectionModel.dart';
import '../apiclient.dart';


class GetAllCollectionApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllCollectionModel> getallCollections(String fromDate, String toDate,int userId,bool forAll) async {
    String trendingPath='';
if(forAll==false){
  trendingPath = "/collector/collect/all?from_date=$fromDate&to_date=$toDate&userId=$userId";
}else{
  trendingPath = "/collector/collect/all";
}

    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return GetAllCollectionModel.fromJson(json.decode(response.body));
  }
}