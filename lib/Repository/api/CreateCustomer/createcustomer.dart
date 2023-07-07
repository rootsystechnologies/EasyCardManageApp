import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';
import '../../modelclass/CreateCustomerModel.dart';

class CreateCustomerApi {
  String baseUrl = basePath;

   createCustomer(
      String name,
      String mobile,
      String email,
      String opBalance,
      String creditLimit,
      String password,
      String passwordConfirmation,
      List<String> allowedPerms,String place) async {
    final url = Uri.parse('$baseUrl/collector/customer/create');
    final preferences = await SharedPreferences.getInstance();

    final token = preferences.getString('Token');
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final body = jsonEncode({
      "name": name,
      "mobile": mobile,
      "email": email,
      "op_balance": opBalance,
      "cred_limit": creditLimit,
      "password": password,
      "place":place,
      "password_confirmation": passwordConfirmation,
      "allowed_perms":allowedPerms
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200||response.statusCode == 201) {
      final jsonResponse = jsonDecode(response.body);
      print(response.body);
      if (jsonResponse != null) {
        return CreateCustomerModel.fromJson(jsonResponse);
      } else {
        throw Exception('Invalid response body');
      }
    } else {
      print('API request failed with status code ${response.statusCode}');
      throw Exception('API request failed');
    }
  }
}
