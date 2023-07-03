import 'dart:convert';


import 'package:http/http.dart';


import '../../modelclass/RechargeModel.dart';
import '../apiclient.dart';

class RechargeApi {
  ApiClient apiClient = ApiClient();
  String trendingpath = '/collector/customer/wallet/recharge';

  Future<RechargeModel> rechargeAmount(String userId, String amount, int pin) async {
    var body = {
      'user':userId,
      'amount': amount,
      'fromapi':true,
      'pin':pin
    };
    Response response = await  apiClient.invokeAPI(trendingpath, 'POST_', jsonEncode(body));

    print(response.body); // Print the response body

    return RechargeModel.fromJson(jsonDecode(response.body));
  }

}