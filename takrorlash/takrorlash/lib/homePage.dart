import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(top: 450,),
        width: double.infinity,
        height: 830,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage("assets/images/1.jpg"),),
        ),
        child:Container(
          padding: EdgeInsets.only(left: 10),
          width: double.infinity,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find the best",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
               Text("parties near you.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
               SizedBox(height: 15,),
                Text("Lit US find you a party foour",style: TextStyle(color: Color.fromARGB(255, 183, 177, 177),fontSize: 25,),),
                 Text("interest",style: TextStyle(color: Color.fromARGB(255, 183, 177, 177),fontSize: 25,),),
                 SizedBox(height: 150,),
                 Center(
                   child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 213, 150, 13),    
                    ),
                    child: Center(
                      child: Text("Start",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                   ),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
