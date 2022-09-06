import 'package:flutter/material.dart';
import 'package:webdevelopment/bodypage.dart';
import 'package:webdevelopment/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ],
            ),
          ),
          child: Column(
            children: const <Widget>[
              NavBar(),
              SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 200),
                    child: BodyPage()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
