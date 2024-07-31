import 'package:assignment3_navigation/Items.dart';
import 'package:assignment3_navigation/details_screen.dart';
import 'package:flutter/material.dart';

Widget createListTile(BuildContext context,List<Items> items,int index){
  return ListTile(
    leading: Image.asset(items[index].Image,scale: 4,),
        title: Text(items[index].name,
        style: const TextStyle(fontWeight: FontWeight.bold),),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              DetailsScreen(name: items[index].name,
                buildBy:items[index].buildBy,
                image: items[index].Image,
              )
          ));
        },
  );
}
class HomeScreen extends StatelessWidget {
  final List<Items> items = [
    Items(name: "C++",  buildBy: "Bjarne Stroustrup",Image:"lib/Images/c++.png" ),
    Items(name: "Java", buildBy: "James Gosling",Image: "lib/Images/java.png"),
    Items(name: "Dart", buildBy: "Lars Bak",Image: "lib/Images/dart.png"),
    Items(name: "Python", buildBy: "Guido van Rossum",Image: "lib/Images/python.png"),
    Items(name: "JavaScript",  buildBy: "Brendan Eich",Image: "lib/Images/javascript.png"),
    Items(name: "C",  buildBy: "Dennis Ritchie",Image:"lib/Images/c.png" ),
    Items(name: "Ruby",  buildBy: "Yukihiro Matsumoto",Image: "lib/Images/ruby.png"),
    Items(name: "Rust",  buildBy: "Graydon Hoare",Image: "lib/Images/rust.png"),
    Items(name: "Solidity", buildBy: "Gavin Wood",Image: "lib/Images/solidity.png"),
    Items(name: "Swift", buildBy: "Apple Inc.",Image: "lib/Images/swift.png"),
    Items(name: "Go",buildBy: "Robert Griesemer",Image: "lib/Images/go.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Center(child: Text(
          'List of Languages',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              createListTile(context, items, index),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
