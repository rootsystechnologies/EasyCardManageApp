import 'dart:convert';

import 'package:http/http.dart';

import '../../modelclass/ChangePasswordModel.dart';
import '../apiclient.dart';

class ChangePasswordApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/profile/update';

  Future<ChangePasswordModel> changePassword(
      String name, String email, String password) async {
    var body = {
      'name':name,
      'email':email,
      'change_password':'yes',
      'password':password
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'PUT', body);

    print(response.body); // Print the response body

    return ChangePasswordModel.fromJson(jsonDecode(response.body));
  }
}
