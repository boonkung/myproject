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
        color: Colors.grey[400],
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              children: [
                Text("HomeScreen"),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("HomeScreen"),
                )
              ],
            ),
            Row(
              children: [
                Text("HomeScreen"),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("HomeScreen"),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste), label: "List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_search), label: "Info")
        ],
      ),
    );
  }
}
