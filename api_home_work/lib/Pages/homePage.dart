import 'package:flutter/material.dart';

import '../model/employee.dart';
import '../services/api.dart';
import 'item1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloading = false;
  String malumot = "";

  List<Employee> ishchilar = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Api.olish().then((value) {
      setState(() {
        ishchilar = value.data!;
        print("err ${value.data![1].id}");
        isloading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 64, 64),
      body: isloading
          ? ListView.builder(
              itemCount: ishchilar.length,
              itemBuilder: (context, index) => item(
                  context,
                  ishchilar[index].name!,
                  ishchilar[index].age!,
                  ishchilar[index].salary!,
                  (){
                    print("ee ${ishchilar[index].id}");
                     Navigator.push(
          context, MaterialPageRoute(builder: (context) => item1(id: ishchilar[index].id! )));
                  }),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

Widget item(BuildContext context, String name, int age, int salary, VoidCallback func) {
  return InkWell(
    onTap:func,
    child: Card(
      color:  Color.fromARGB(255, 0, 0, 0),
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name($age)",
              style: TextStyle(color: Color.fromARGB(255, 64, 220, 11), fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$salary\$",
              style: TextStyle(
                  color: Color.fromARGB(255, 207, 19, 19), fontSize: 18),
            ),
          ],
        ),
      ),
    ),
  );
}
