import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            // Container(
            //   child: Text('hey'),
            // )
            Container(
              height: 200,
              child: Image.asset('assests/images/ram.png',fit: BoxFit.cover,),
            ),
            Container(
              child: Text("Rahul"),
            ),
            Container(
              child: Text("rahulparmar8189@gmail.com"),
            )
          ],
        ),
      ),
    );
  }
}
