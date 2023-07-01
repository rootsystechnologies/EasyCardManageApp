import 'dart:convert';


import 'package:http/http.dart';


import '../../modelclass/CollectAmount.dart';
import '../apiclient.dart';

class CollectApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/collect';

  Future<CollectAmount> collectAmount(String userId, String amount) async {
    var body = {'userId':userId, 'amount': amount};
    Response response = await  apiClient.invokeAPI(trendingpath, 'POST_', body);

    print(response.body); // Print the response body

    return CollectAmount.fromJson(jsonDecode(response.body));
  }

}