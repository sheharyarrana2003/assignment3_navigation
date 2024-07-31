import 'package:flutter/material.dart';
Widget  RowForText(String title, String text) {
  return Row(
    children: [
      Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
      Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
    ],
  );
}
Widget ButtonToHome(BuildContext context){
  return GestureDetector(
    onTap: (){
      Navigator.pop(context);
    },
    child: Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(11),

      ),
      child: Center(child: Text("Back to Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
    ),
  );
}
class DetailsScreen extends StatelessWidget {
  final String name;
  final String buildBy;
  final String image;

  DetailsScreen({
    required this.name,
    required this.buildBy,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Details Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.asset(image, width: 100, height: 100),
                ),
              ),
              const SizedBox(height: 20),
              RowForText("Name: ", name),
              const SizedBox(height: 10),
              RowForText("Build By: ", buildBy),
              const SizedBox(height: 10),
              ButtonToHome(context),
            ],
          ),
        ),
      ),
    );
  }
}
