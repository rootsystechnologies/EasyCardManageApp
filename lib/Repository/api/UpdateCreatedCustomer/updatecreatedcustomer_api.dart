import 'dart:convert';

import 'package:http/http.dart';


import '../../modelclass/ChangePasswordModel.dart';
import '../../modelclass/UpdateCreatedCustomer.dart';
import '../apiclient.dart';

class UpdateCreatedCustomerApi {
  ApiClient apiClient = ApiClient();


  Future<UpdateCreatedCustomer> updateCreatedCustomer(String userId,String name,String mobile,String email,String creditLimit) async {
    String trendingpath = '/collector/customer/update/$userId';

    var body = {
      "name": name,
      "mobile": mobile,
      "email": email,
      // "op_balance": "10000",
      "cred_limit": creditLimit
      // "change_password":"true",
      // "password": "987654321",
      // "allowed_perms": [
      //     "1","3","4"
      // ]
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'PATCH', body);

    print(response.body); // Print the response body

    return UpdateCreatedCustomer.fromJson(jsonDecode(response.body));
  }}