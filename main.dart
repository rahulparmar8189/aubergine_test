import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'New_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aubergine Test',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Aubergine Test"),
      backgroundColor: Color.fromARGB(255, 4, 93, 84),
    );
    return Scaffold(
      appBar: appBar,
      body: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.white,
                  elevation: 6,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 8,
                  ),
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(CupertinoIcons.person_alt),
                      ),
                      title: Text(
                        "Rahul",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      subtitle: Text("rahulparmar8189")),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
