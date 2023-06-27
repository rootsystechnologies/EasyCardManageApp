import 'dart:convert';


import 'package:http/http.dart';

import '../../Modelclass/LoginModel.dart';
import '../apiclient.dart';
import '../multipathapiclient.dart';

class LoginApi {
  PatchMethodApiClient apiClient = PatchMethodApiClient();
  String trendingpath = '/login/collector';

  Future<LoginModel> postuserdata(String email, String password) async {
    var body = {'email':email, 'password': password};
    Response response = await apiClient.invokeApi(Path: trendingpath, method: "POST", body: body);

    print(response.body); // Print the response body

    return LoginModel.fromJson(jsonDecode(response.body));
  }

}