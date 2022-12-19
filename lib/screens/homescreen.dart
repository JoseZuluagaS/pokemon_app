import 'package:flutter/material.dart';
import 'package:pokemon_app/api/api.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Column(children: [
        
      ]),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeRequest().then((value) => {
      
    });
  }
}