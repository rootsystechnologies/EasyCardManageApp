import 'dart:convert';

import 'package:http/http.dart';

import '../../modelclass/CreateCustomerModel.dart';
import '../apiclient.dart';

class CreateCustomerApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/customer/create';

  Future<CreateCustomerModel> createCustomer(
      String name,
      String mobile,
      String email,
      String opBalance,
      String creditLimit,
      String password,
      String passwordConfirmation,
      List<String> allowedperms,String place) async {

    var body = {
      'name': name,
      'mobile': mobile,
      'email': email,
      'op_balance': opBalance,
      'cred_limit': creditLimit,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'place':place,
      'allowed_perms': jsonEncode(allowedperms) // Convert the list to JSON string
    };

    Response response = await apiClient.invokeAPI(trendingpath, 'POST_', body);

    print(response.body); // Print the response body
      return CreateCustomerModel.fromJson(jsonDecode(response.body));

  }
}
