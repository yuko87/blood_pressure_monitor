import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 168, 228, 212)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '血圧記録'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // ボタンを押したときに数字を増やす
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //画面下のアイコン
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: const Color.fromARGB(255, 115, 207, 183),
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_month, title: 'カレンダー'),
          TabItem(icon: Icons.add, title: '入力'),
          TabItem(icon: Icons.auto_graph_outlined, title: 'グラフ'),
          TabItem(icon: Icons.settings, title: 'オプション'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: Form(
          child: Column(
        children: [
          Container(
              color: const Color.fromARGB(255, 241, 239, 202),
              width: 500,
              height: 100,
              child: const Text('朝の血圧')),
          Container(
              color: const Color.fromARGB(255, 199, 201, 129),
              width: 500,
              height: 100,
              child: const Text('夜の血圧'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
