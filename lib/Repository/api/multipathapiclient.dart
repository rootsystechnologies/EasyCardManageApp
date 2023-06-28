import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
class PatchMethodApiClient {

  Future<http.Response> invokeApi({
    //required List<XFile>? filepath,
    required String Path,
    required String method,
    required Map<String, String>? body,
    bool isFiles = true,
  }) async {
    final preferences = await SharedPreferences.getInstance();
    final token = preferences.getString('Token');
    Map<String, String> headerParams = {"authorization": "Bearer $token"};

    print(basePath + Path);
    var request = http.MultipartRequest(method, Uri.parse(basePath + Path));
    request.headers.addAll(headerParams);
    print(basePath + Path);
    print("request : $basePath$Path");
    List<http.MultipartFile> newList = [];
    // if (filepath != null) {
    //   for (int i = 0; filepath!.length > i; i++) {
    //     if (filepath[i].path != "") {
    //       request.files.add(await http.MultipartFile.fromPath(
    //           isFiles ? 'files' : 'file', filepath[i].path.toString()));
    //
    //       // var multipartFile = await http.MultipartFile.fromPath(
    //       //     "files", filepath[i].path.toString());
    //       // print(filepath[i].path.toString());
    //       // print(multipartFile.field);
    //       // newList.add(multipartFile);
    //     }
    //   }
    // }

    print(body);
    print("111111111111111111111111111111111111111111111111111111111");
    body != null ? request.fields.addAll(body) : null;
    print(request);

    http.StreamedResponse res = await request.send();
    print(res);
    http.Response responsed = await http.Response.fromStream(res);
    print(responsed);
    print(responsed.body);
    final responseData = json.decode(responsed.body);

    print('worked 4');
    print(res.statusCode);
    if (res.statusCode == 200) {
      print(responseData);
    } else {
      print('Error');
    }
    print("reason : $res.");
    print(responsed);
    return responsed;
  }
}