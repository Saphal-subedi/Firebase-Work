import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final increase inc = Get.put(increase());
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
                child: Obx(() => Text(
                      "${inc.value}",
                      style: TextStyle(fontSize: 40.0),
                    ))),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (() {
            Get.snackbar("message", "I am saphal subedi");
            inc.updatee();
          }),
          label: Icon(Icons.add),
          focusColor: Colors.green,
          tooltip: "Update Value",
          hoverColor: Colors.green,
        ),
      ),
    );
  }
}

class increase extends GetxController {
  var value = 0.obs;
  void updatee() {
    value = value + 10;
  }
}
