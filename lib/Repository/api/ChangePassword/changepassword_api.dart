import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modelclass/ChangePasswordModel.dart';
import '../apiclient.dart';

class ChangePasswordApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/profile/update';

  Future<ChangePasswordModel> changePassword(String password) async {
    final preferences = await SharedPreferences.getInstance();
    final String name=preferences.getString('Name').toString();
    final String email=preferences.getString('Email').toString();
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
