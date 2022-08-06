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
      drawer: const Drawer(),
      body: Container(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.ac_unit),
                    Text("UNIT"),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.list_sharp),
                    Text("ABC"),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.access_alarm),
                    Text("ALARM"),
                  ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste), label: "List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_search), label: "Info"),
        ],
      ),
    );
  }
}
