import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modelclass/ChangePasswordModel.dart';
import '../apiclient.dart';

class ChangePinApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/profile/update';

  Future<ChangePasswordModel> changePin(String oldPin,String newPin) async {
    final preferences = await SharedPreferences.getInstance();
    final String name=preferences.getString('Name').toString();
    final String email=preferences.getString('Email').toString();
    var body = {
      'name':name,
      'email':email,
      'pin_change':'yes',
      'old_pin':oldPin,
      'new_pin':newPin
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'PUT', body);

    print(response.body); // Print the response body

    return ChangePasswordModel.fromJson(jsonDecode(response.body));
  }
}
