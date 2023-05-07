import 'package:flutter/material.dart';

class animationgContainer extends StatefulWidget {
  const animationgContainer({super.key});

  @override
  State<animationgContainer> createState() => _animationgContainerState();
}

class _animationgContainerState extends State<animationgContainer> {
  @override
  var margin = 20;
  var color = Colors.red;
  var width = 200.0;
  var height = 200.0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        height: height,
        width: width,
        color: color,
        child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      width = 100.0;
                    });
                  },
                  child: Text("Decrease width")),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      height = 400;
                    });
                  },
                  child: Text("Increase Height")),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      height = 80.0;
                    });
                  },
                  child: Text("Decrease height")),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      width = 250;
                    });
                  },
                  child: Text("Increase width")),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
