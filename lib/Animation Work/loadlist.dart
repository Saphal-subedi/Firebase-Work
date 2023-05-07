import 'package:firebase_work/Animation%20Work/ListNavigator.dart';
import 'package:flutter/material.dart';

class loadlistt extends StatelessWidget {
  const loadlistt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 30.0,
      ),
      itemCount: photos.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nextscreen(index: index),
              ),
            );
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                photos[index].title,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
              ),
              Text(
                photos[index].descreption,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          leading: Container(
            child: Image(image: AssetImage(photos[index].img)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
            ),
          ),
          trailing: Text(
            '\$${photos[index].cost}',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}

class Imgg {
  String title;
  int cost;
  String img;
  String descreption;
  Imgg({
    required this.img,
    required this.title,
    required this.cost,
    required this.descreption,
  });
}

List<Imgg> photos = [
  Imgg(
    img: "lib/photos/beach.png",
    title: "Beach",
    cost: 100,
    descreption: "hello I am here at beach",
  ),
  Imgg(
    img: "lib/photos/city.png",
    title: "City",
    cost: 700,
    descreption: "hello I am here at city",
  ),
  Imgg(
    img: "lib/photos/ski.png",
    title: "Ski Driving",
    cost: 900,
    descreption: "hello I am here at ski",
  ),
  Imgg(
    img: "lib/photos/space.png",
    title: "Space",
    cost: 50,
    descreption: "hello I am here at space",
  ),
];
