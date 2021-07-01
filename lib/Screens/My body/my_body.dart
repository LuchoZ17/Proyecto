import 'package:flutter/material.dart';
import 'package:my_project/screens/Home/HomeScreen.dart';

class MyBodyScreen extends StatefulWidget {
  const MyBodyScreen({Key? key}) : super(key: key);

  @override
  _MyBodyScreenState createState() => _MyBodyScreenState();
}

class _MyBodyScreenState extends State<MyBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
