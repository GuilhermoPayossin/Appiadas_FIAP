import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appiadas",
      home: AppiadasScreen()
    );
  }
}

class AppiadasScreen extends StatefulWidget {
  const AppiadasScreen({super.key});

  @override
  State<AppiadasScreen> createState() => _AppiadasScreenState();
}

class _AppiadasScreenState extends State<AppiadasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Appiadas"),),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background_joker.png"), fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Vertical
          crossAxisAlignment: CrossAxisAlignment.center, //Horizontal
          children: [
            Text("Aqui vão as piadas", 
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent
            )),
          ],
        ),
      ),
    );
  }
}