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
        child: Column(
          children: [
            Container(
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
            Container(
              color: Colors.lightBlue,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      width: 200,
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            padding: const EdgeInsets.all(5),
                            child: const Text("Strawberry Pavlova"),
                          ),
                          Container(
                            color: Colors.blueAccent,
                            padding: const EdgeInsets.all(5),
                            child: const Text(
                                "A fancy looking dessert recipe that you can make for your partner on Valentine's Day,A fancy looking dessert recipe that you can make for your partner on Valentine's Day"),
                          ),
                          Container(
                            color: Colors.red,
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(children: const [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star_border),
                                  Icon(Icons.star_border),
                                ]),
                                const Text("299 Reviews"),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.lightGreen,
                            padding: const EdgeInsets.all(3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.bookmark),
                                      Text("PERP"),
                                      Text("11 min")
                                    ]),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.cookie),
                                      Text("COOK"),
                                      Text("11 min")
                                    ]),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.spa_sharp),
                                      Text("FEEDS:"),
                                      Text("11 min")
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                    ),
                  )
                ],
              ),
            )
          ],
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
