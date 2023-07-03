import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/Getallcustomers.dart';
import '../apiclient.dart';


class GetAllCustomersApi {
  ApiClient apiClient = ApiClient();

  Future<Getallcustomers> getallcustomers(String searchKey) async {

    String trendingPath = "/collector/customer/all?sk=$searchKey";
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return Getallcustomers.fromJson(json.decode(response.body));
  }
}