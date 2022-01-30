import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Empty notification widget"),
      ),
      body: Center(
        child: EmptyWidget(
          image: "assets/money.png",
          // packageImage: PackageImage.Image_2,
          hideBackgroundAnimation: false,
          title: "Insufficient Balance",
          subTitle: "Not enough money left for the transaction",
          //titleTextStyle: TextStyle(color: Colors.red, fontSize: 30),
          //subtitleTextStyle: TextStyle(color: Colors.blueAccent, fontSize: 20),
        ),
      ),
    );
  }
}
