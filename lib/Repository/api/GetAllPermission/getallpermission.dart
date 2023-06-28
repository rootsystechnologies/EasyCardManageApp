import 'dart:convert';
import 'package:http/http.dart';



import '../../modelclass/GetAllPermission.dart';
import '../apiclient.dart';


class GetAllPermissionApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllPermission> getallpermission() async {

    String trendingPath = "/collector/customer/permissions";
    Response response = await apiClient.invokeAPI(trendingPath, "GET",  null);
    print(response.body);
    return GetAllPermission.fromJson(json.decode(response.body));
  }
}