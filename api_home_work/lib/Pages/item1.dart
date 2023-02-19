import 'package:api_home_work/Pages/surpris.dart';
import 'package:flutter/material.dart';

import '../model/employee.dart';
import '../services/api.dart';

class item1 extends StatefulWidget {
  int id;
  item1({required this.id, super.key});

  @override
  State<item1> createState() => _item1State();
}

class _item1State extends State<item1> {
  late Employee employee;

  bool isLoading = false;

  void uchirish() {
    Api.deleteMethod(widget.id).then((value) => {setState(() {})});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api.bittaOlish(widget.id).then((value) {
      setState(() {
        employee = value;
        isLoading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: isLoading
          ? Stack(
            children: [
               Container(
                  width: double.infinity,
                  height: 850,
                  decoration: BoxDecoration(

                    image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/3.jpg"))
                  ),
                ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => surpris(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 96, 88, 88),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "upgrade",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => surpris(),
                                    ));
                              },
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 96, 88, 88),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "delete",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 290,
                    ),
                    Container(
                      width: 150,
                    height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 66, 66),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              employee.name!,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                             Text(
                        employee.salary!.toString() + "\$",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   
                  ],
                ),
               
            ],
          )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
