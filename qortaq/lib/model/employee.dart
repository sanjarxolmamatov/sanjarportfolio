class Employee{
  int? id;
  String? name;
  int? salary;
  int? age;
  String?  img;

  Employee(this.id,this.name,this.salary,this.age,this.img);

  Employee.fromMap(Map<String,dynamic> map ){
    id = map["id"];
    name = map["employee_name"];
    age = map["employee_age"];
    salary = map["employee_salary"];
    img = map["profile_image"];
  }

  Map toMap(){
    return {
      "id" : id,
      "employee_name" : name,
      "employee_age" : age,
      "employee_salary" : salary,
      "profile_image" : img,
    };
  }
}