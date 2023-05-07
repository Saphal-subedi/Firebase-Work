// import 'package:firebase_work/Api/api.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class student {
//   String name;
//   int rollno;
//   student({required this.name, required this.rollno});
// }

// class College extends GetxController {
//   var info = 0;
//   List detail=[];
//   List<student> details = [
//     student(name: "saphal", rollno: 10),
//     student(name: "safal", rollno: 99),
//     student(name: "saw fall", rollno: 100),
//     student(name: "shaw fall", rollno: 77),
//     student(name: "sha foul", rollno: 199)
//   ];
//   void increase() {
//      detail = details[info] as List<dynamic>;
//     // var a = int.parse(info);
//     // var namee = details[a].name;
//     // var roll = details[info].rollno;
//   }
// }

// class Listofdata extends StatelessWidget {
//   const Listofdata({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final College collegeController = Get.put(College());
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Center(
//               child: GetBuilder(
//                 builder: (controller) {
//                   Text(
//                     collegeController.detail;
//                     ,
//                     style: TextStyle(fontSize: 40.0),
//                   );
//                 },
//               ),
//             )
//           ],
//           //
//         ),
//         floatingActionButton: FloatingActionButton.extended(
//           onPressed: (() {}),
//           label: Icon(Icons.add),
//           focusColor: Colors.green,
//           tooltip: "Update Value",
//           hoverColor: Colors.green,
//         ),
//       ),
//     );
//   }
// }
