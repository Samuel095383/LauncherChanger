import 'package:flutter/material.dart';

import '../component/my_drawer.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


TextEditingController _controller = TextEditingController();


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireOS Launcher Changer"),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
                "Insert the launcher app name, same as the example",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              //margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 100, right: 100),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'com.example.launcher'),
              ),
            ),
            ElevatedButton(
              onPressed: () {  },
              child: Text("Run Script")
            )
          ],
        ),
      ),
    );
  }
}
