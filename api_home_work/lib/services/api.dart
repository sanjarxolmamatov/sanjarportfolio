import 'dart:convert';

import 'package:api_home_work/model/employee_list.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';

import '../model/employee.dart';

class Api {
  static String baseUrl = "dummy.restapiexample.com";
  static String getApi = "/api/v1/employees";
  static String getOneApi = "/api/v1/employee";
  static String postApi = "/api/v1/create";
  static String putApi = "/api/v1/update";
  static String deleteApi = "/api/v1/delete";

  static Future<EmployeeList> olish() async {
    var url = Uri.https(baseUrl, getApi);

    Response response = await https.get(url);

    return EmployeeList.fromMap(jsonDecode(response.body));
  }

  static Future<Employee> bittaOlish(int id) async {
    var url = Uri.https(baseUrl, getOneApi + "/$id");

    Response response = await https.get(url);
    return Employee.fromMap(jsonDecode(response.body)["data"]);
  }

  static Future<String> postMethod(Map<String, dynamic> body, int id) async {
    var url = Uri.https(baseUrl, postApi, body);

    Response response = await https.put(url);

    return response.body;
  }

  static Future<String> putMethod(Map<String, dynamic> body, int id) async {
    var url = Uri.https(baseUrl, putApi + "/$id", body);

    Response response = await https.put(url);

    return response.body;
  }

  static Future<String> deleteMethod(int id) async {
    var url =Uri.https(baseUrl, deleteApi+"/$id");

    Response response = await https.delete(url);

    return response.body;
  }
}
