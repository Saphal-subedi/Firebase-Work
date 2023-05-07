import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'loadlist.dart';

class nextscreen extends StatelessWidget {
  var index;
  nextscreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Image.asset(
                '${photos[index].img}',
                fit: BoxFit.cover,
              )),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              '${photos[index].title}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              ' I am at ${photos[index].title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: heart(),
          ),
          Text(
              "Cricket is a popular sport played between two teams of eleven players each, using a bat and a ball. It originated in England in the 16th century and has since spread to other parts of the world, particularly in countries like Australia, India, South Africa, and the West Indies, where it is a beloved pastime.The objective of the game is for one team to score more runs than the other by batting, while the other team tries to prevent this by bowling and fielding. The playing field is oval-shaped and has a rectangular strip in the middle called the pitch, where the bowler delivers the ball to the batsman."),
        ],
      ),
    );
  }
}

class heart extends StatelessWidget {
  const heart({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: Colors.brown,
      size: 40.0,
    );
  }
}
