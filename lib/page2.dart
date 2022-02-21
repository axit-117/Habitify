import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.50,
        title: Text("New Area",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),




      ),


    );
  }
}
