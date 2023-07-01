import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/GetAllCollectionModel.dart';
import '../apiclient.dart';


class GetAllCollectionApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllCollectionModel> getallCollections(String fromDate, String toDate,String search) async {

    String trendingPath = "/collector/collect/all?from_date=$fromDate&to_date=$toDate&sk=$search";
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return GetAllCollectionModel.fromJson(json.decode(response.body));
  }
}