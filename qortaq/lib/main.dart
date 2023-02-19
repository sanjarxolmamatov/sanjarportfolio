
import 'package:flutter/material.dart';
import 'package:qortaq/model/employee.dart';
import 'package:qortaq/services/api.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = false;
  String malumot = "";

 List<Employee> ishchilar=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    Api.olish()
        .then((value) {
      setState(() {
        ishchilar = value.data!;
        
        isLoading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: isLoading
            ? ListView.builder(
              itemCount: ishchilar.length,
              itemBuilder: (context,index)=>item(ishchilar[index].name!, ishchilar[index].age!, ishchilar[index].salary!))
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}

Widget item(String name,int age,int salary){
  return Card(
    child: Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("$name($age)",style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 217, 37)),),
        const SizedBox(height: 10,),
        Text("$salary\$",style: const TextStyle(fontSize: 18,color: Color.fromARGB(255, 31, 217, 37)),),
      ]),
    ),
  );
}
