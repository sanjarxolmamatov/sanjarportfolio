// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class NewPage extends StatefulWidget {
//   const NewPage({super.key, required this.title});

//   final String title;

//   @override
//   State<NewPage> createState() => _NewPageState();
// }

// class _NewPageState extends State<NewPage> {
//   late double height, width;
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: height * .5,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(50),
//                   ),
//                   color: Colors.black,
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                 ),
//                 child: Container(
//                   height: height * .5,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(50),
//                     ),
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             top: height * .5 - (width * .2),
//             left: width * .3,
//             child: Container(
//               child: Image(
//                 image: AssetImage("assets/images/2.jpg"),   
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
