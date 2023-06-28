import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/getallcustomers.dart';
import '../apiclient.dart';


class GetAllCustomersApi {
  ApiClient apiClient = ApiClient();

  Future<Getallcustomers> getallcustomers() async {

    String trendingPath = "/collector/customer/all";
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return Getallcustomers.fromJson(json.decode(response.body));
  }
}