import 'package:flutter/material.dart';
import 'home.dart';
import 'gaming.dart';
import 'crafting.dart';
import 'themedata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   primaryColor: Colors.green,
      //   appBarTheme: AppBarTheme(
      //     color: Colors.amber
      //   )
      // ),
      home: MyHomePage(title: 'Flut-O-Zap'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  Widget _currentWidget;

  static List<Widget> _widgets = <Widget>[
    Home(),
    Crafting(),
    Gaming()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _currentWidget = _widgets[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgets.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handyman),
            label: 'Crafting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Gaming',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).selectedRowColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
