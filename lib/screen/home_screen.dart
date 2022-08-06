import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      drawer: Drawer(),
      body: const Center(
        child: Text("Hello world"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.content_paste), label: "List"),
        BottomNavigationBarItem(icon: Icon(Icons.person_search), label: "Info")
      ]),
    );
  }
}
