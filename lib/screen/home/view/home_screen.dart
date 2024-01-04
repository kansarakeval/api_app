import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ApI"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'user');
                },
                child: Text("User"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'news');
                },
                child: Text("news"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
