import 'package:flutter/material.dart';
import 'package:nft_marketplace_ui/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  List<Widget> _widgetsOption = [
    HomePage(),
    Container(child: Center(child: Text("search"))),
    Container(child: Center(child: Text("stats"))),
    Container(child: Center(child: Text("setting"))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetsOption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Color(0xffAAB8C2),
        backgroundColor: Color(0xff253341),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.graphic_eq,
              ),
              label: 'stats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'settings'),
        ],
      ),
    );
  }
}
