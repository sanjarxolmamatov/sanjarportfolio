import 'package:qortaq/model/employee.dart';

class EmployeeList {
  String? status;
  List<Employee>? data;
  String? msg;
// data = [Employee(1,"Husan",17),]
  EmployeeList.fromMap(Map<String, dynamic> json) {
    status = json["status"];
    data = List<Employee>.from(
        json["data"].map((element) => Employee.fromMap(element)));
    msg = json["message"];
  }

  Map toMap() {
    return {
      'status': status,
      "data": List.from(data!.map((e) => e.toMap())),
      "message": msg,
    };
  }
}
