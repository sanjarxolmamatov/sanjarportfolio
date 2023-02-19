import 'package:api_home_work/model/employee.dart';

class EmployeeList {
  String? status;
  List<Employee>? data;
 String? msg;

 EmployeeList.fromMap(Map<String,dynamic> json){
  status = json["status"];
  data = List<Employee>.from(json["data"].map((element) => Employee.fromMap(element)));
 }

 Map toMap() {
  return {
    'status': status,
    "data" : List.from(data!.map((e) => e.toMap())),
    "message" : msg,
  };
 }
}