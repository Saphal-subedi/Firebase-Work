import 'dart:convert';
import 'dart:core';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class Source {
  dynamic id;
  String name;
  Source({required this.id, required this.name});
  factory Source.fromjson(Map<String, dynamic> json) {
    return Source(id: json['id'] ?? "", name: json['name'] ?? "");
  }
}

class details {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Source source;
  details(
      {required this.author,
      required this.source,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
  factory details.fromjson(Map<String, dynamic> json) {
    return details(
        author: json['author'] ?? "",
        source: Source.fromjson(json['source']),
        title: json['title'] ?? "",
        description: json['description'] ?? '',
        url: json['url'] ?? '',
        urlToImage: json['urlToImage'] ?? '',
        publishedAt: json['publishedAt'] ?? '',
        content: json['content'] ?? '');
  }
}

List<details> newslist = [];

class getNews extends StatefulWidget {
  const getNews({super.key});

  @override
  State<getNews> createState() => _getNewsState();
}

class _getNewsState extends State<getNews> {
  void fetchHttp() async {
    print('start http');
    const url =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b0937910f52f4db6946c4b61e3a07136';
    final Uri uri = Uri.parse(url);
    final responseHttp = await http.get(uri);
    final bodyHttp = responseHttp.body;
    //since responseHttp.body is a string type but we need a json type so we have to decode it
    final jsonHttp = jsonDecode(bodyHttp);
    final result = jsonHttp['articles'] as List<dynamic>;
    final data = result.map((e) => details.fromjson(e)).toList();
    newslist = data;
    print('end http');
  }

  @override
  Widget build(BuildContext context) {
    fetchHttp();
    print("I am called");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tat Tato Khabar"),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  InkWell(
                    child: Card(
                      child: ListTile(
                        title: Text(newslist[index].title),
                        subtitle: Text(newslist[index].description),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => newsScreen(index)));
                    },
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                ],
              );
            }),
            itemCount: newslist.length,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              fetchHttp();
              setState(() {});
            },
            child: Text("get all news"),
          )),
    );
  }
}

List<String> newsImage = [
  "https://media.istockphoto.com/id/1412219721/photo/live-shot-of-junior-sportsman-motorcyclist-training-on-motorbike-at-hot-summer-day-outdoors.jpg?s=612x612&w=is&k=20&c=nLX7oqvnOGErlN6hTQqJK7Ax_i30_ISqLdzJMiu8fHg=",
  "https://cdn.pixabay.com/photo/2016/11/29/10/21/dirt-bike-1868996_960_720.jpg",
  "https://cdn.pixabay.com/photo/2013/08/09/18/08/dirt-bike-171156_960_720.jpg",
  "https://media.istockphoto.com/id/1385385302/photo/a-man-riding-an-off-road-motorcycle-on-a-mountain-road.jpg?s=1024x1024&w=is&k=20&c=z9MiFxD3yiVXFGrzNx6JZ5G1idP4c_h_WRiysJh53qE=",
  "https://media.istockphoto.com/id/1366924717/photo/motocross-rider-on-his-bike-ready-to-race-in-dirt-track.jpg?s=1024x1024&w=is&k=20&c=bEO1p5MUwNLbQ7fxKdZ5jhRj5-v8fu6XAnfALUaoejc=",
  "https://media.istockphoto.com/id/1412219721/photo/live-shot-of-junior-sportsman-motorcyclist-training-on-motorbike-at-hot-summer-day-outdoors.jpg?s=612x612&w=is&k=20&c=nLX7oqvnOGErlN6hTQqJK7Ax_i30_ISqLdzJMiu8fHg=",
  "https://cdn.pixabay.com/photo/2016/11/29/10/21/dirt-bike-1868996_960_720.jpg",
  "https://cdn.pixabay.com/photo/2013/08/09/18/08/dirt-bike-171156_960_720.jpg",
  "https://media.istockphoto.com/id/1385385302/photo/a-man-riding-an-off-road-motorcycle-on-a-mountain-road.jpg?s=1024x1024&w=is&k=20&c=z9MiFxD3yiVXFGrzNx6JZ5G1idP4c_h_WRiysJh53qE=",
  "https://media.istockphoto.com/id/1366924717/photo/motocross-rider-on-his-bike-ready-to-race-in-dirt-track.jpg?s=1024x1024&w=is&k=20&c=bEO1p5MUwNLbQ7fxKdZ5jhRj5-v8fu6XAnfALUaoejc=",
  "https://media.istockphoto.com/id/1412219721/photo/live-shot-of-junior-sportsman-motorcyclist-training-on-motorbike-at-hot-summer-day-outdoors.jpg?s=612x612&w=is&k=20&c=nLX7oqvnOGErlN6hTQqJK7Ax_i30_ISqLdzJMiu8fHg=",
  "https://cdn.pixabay.com/photo/2016/11/29/10/21/dirt-bike-1868996_960_720.jpg",
  "https://cdn.pixabay.com/photo/2013/08/09/18/08/dirt-bike-171156_960_720.jpg",
  "https://media.istockphoto.com/id/1385385302/photo/a-man-riding-an-off-road-motorcycle-on-a-mountain-road.jpg?s=1024x1024&w=is&k=20&c=z9MiFxD3yiVXFGrzNx6JZ5G1idP4c_h_WRiysJh53qE=",
  "https://media.istockphoto.com/id/1366924717/photo/motocross-rider-on-his-bike-ready-to-race-in-dirt-track.jpg?s=1024x1024&w=is&k=20&c=bEO1p5MUwNLbQ7fxKdZ5jhRj5-v8fu6XAnfALUaoejc=",
  "https://media.istockphoto.com/id/1412219721/photo/live-shot-of-junior-sportsman-motorcyclist-training-on-motorbike-at-hot-summer-day-outdoors.jpg?s=612x612&w=is&k=20&c=nLX7oqvnOGErlN6hTQqJK7Ax_i30_ISqLdzJMiu8fHg=",
  "https://cdn.pixabay.com/photo/2016/11/29/10/21/dirt-bike-1868996_960_720.jpg",
  "https://cdn.pixabay.com/photo/2013/08/09/18/08/dirt-bike-171156_960_720.jpg",
  "https://media.istockphoto.com/id/1385385302/photo/a-man-riding-an-off-road-motorcycle-on-a-mountain-road.jpg?s=1024x1024&w=is&k=20&c=z9MiFxD3yiVXFGrzNx6JZ5G1idP4c_h_WRiysJh53qE=",
  "https://media.istockphoto.com/id/1366924717/photo/motocross-rider-on-his-bike-ready-to-race-in-dirt-track.jpg?s=1024x1024&w=is&k=20&c=bEO1p5MUwNLbQ7fxKdZ5jhRj5-v8fu6XAnfALUaoejc="
];

Widget newsScreen(int index) {
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "AUTHOR:-${newslist[index].author}",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Text(
            "TITLE:-${newslist[index].title}",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            "DESCRIPTTION:-${newslist[index].description}",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Text(
            "CONTENT:-${newslist[index].content}",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Text(
            "PUBLISHEDAT:-${newslist[index].publishedAt}",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Image.network(newsImage[index]),
        ],
      ),
    ),
  );
}
