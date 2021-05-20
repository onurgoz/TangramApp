import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  static const routeName = '/Developer';
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developers"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Onur Göz",
              style: TextStyle(fontSize: 56),
            )
          ],
        ),
      ),
    );
  }
}
