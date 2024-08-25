import 'package:blood_pressure_monitor/calendar_page.dart';
import 'package:blood_pressure_monitor/graph_page.dart';
import 'package:blood_pressure_monitor/homepage/home_page.dart';
import 'package:blood_pressure_monitor/input_page.dart';
import 'package:blood_pressure_monitor/list_page.dart';
import 'package:blood_pressure_monitor/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 168, 228, 212)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeContent(),
    InputPage(),
    CalendarPage(),
    GraphPage(),
    ListPage(),
    SettingsPage(),
  ];

  static const List<String> _titles = [
    '血圧記録',
    '入力',
    'カレンダー',
    'グラフ',
    'リスト',
    '設定',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles.elementAt(_selectedIndex)),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: '入力',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'カレンダー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'グラフ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'リスト',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                print('Button tapped');
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
