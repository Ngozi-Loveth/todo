import 'package:flutter/material.dart';

import '../widgets/home_widget.dart';
import '../widgets/todo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIdex = 0;
  static const List _appBarOptions = <Widget>[
    Text('Todo'),
    Text('My Todo'),
  ];

  static const List _widgetoption = <Widget>[
    HomeWidget(),
    TodoWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: _appBarOptions.elementAt(_selectedIdex),
      ),
      body: _widgetoption.elementAt(_selectedIdex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIdex = value;
            });
          },
          currentIndex: _selectedIdex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Todo"),
          ]),
    );
  }
}
