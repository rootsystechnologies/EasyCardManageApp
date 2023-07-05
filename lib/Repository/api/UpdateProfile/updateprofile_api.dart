import 'dart:convert';

import 'package:http/http.dart';


import '../../modelclass/ChangePasswordModel.dart';
import '../apiclient.dart';

class UpdateProfileApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/profile/update';

  Future<ChangePasswordModel> updateName(String name) async {
    var body = {
      'name':name,
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'PUT', body);

    print(response.body); // Print the response body

    return ChangePasswordModel.fromJson(jsonDecode(response.body));
  }
  Future<ChangePasswordModel> updateEmail(String email) async {
    var body = {
      'email':email,
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'PUT', body);

    print(response.body); // Print the response body

    return ChangePasswordModel.fromJson(jsonDecode(response.body));
  }
}
