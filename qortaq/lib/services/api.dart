
import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:qortaq/model/employee_list.dart';

class Api {

  static String baseUrl = "dummy.restapiexample.com";
  static String getApi = "/api/v1/employees";
  static String getOneApi = "/api/v1/employee";// id
  static String postApi = "/api/v1/create";
  static String putApi = "/api/v1/update";  // id
  static String deleteApi = "/api/v1/delete"; // id


  static Future<EmployeeList> olish() async {
    var url = Uri.https(baseUrl, getApi);

    Response response = await https.get(url);
       
    return EmployeeList.fromMap(jsonDecode(response.body));
  }

  static Future<String> bittaOlish(int id) async {

    var url = Uri.https(baseUrl, getOneApi+"/$id");

    Response response = await https.get(url);

    return response.body;
  }
  
  static Future<String> postMethod(Map<String,dynamic> body) async {

    var url = Uri.https(baseUrl, postApi,body);

    Response response = await https.post(url);

    return response.body;
  }

  static Future<String> putMethod(Map<String,dynamic> body,int id) async {

    var url = Uri.https(baseUrl, putApi+"/$id",body);

    Response response = await https.put(url);

    return response.body;
  }

  static Future<String> deleteMethod(int id) async {

    var url = Uri.https(baseUrl, deleteApi+"/$id");

    Response response = await https.delete(url);

    return response.body;
  }


}
