import 'package:flutter/material.dart';

// import : импортто!
// void : эч нерсени кайтарбайт!
// main : Dartтагы башталгыч функция.
// (): mainдин функция экендигин билдирет (параметр жазабыз).
// {}: main функциясынын денеси (функциянын аткарган жумушу жазылат).
void main() {
  // runApp : функция (тиркемени иштетип берет).
  // const : constant => бир эле жолу курулат.
  // MyApp : бул бир класс
  runApp(const MyApp());
}

// class : Dartка жаны тушунук киргизебиз.
// extends : parent класстан child класска мурас алат(генетикалык).
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // super : child класстан parent класска откоруп берет.
// @override : parent класстагы функцияны child класска озгортуп жазуу.
  @override
  // Widget : build методун return (Widget кайтарып беруу)
  // build : функциянын аты.
  // BuildContext context : build функциясы ала турган параметр
  // return : build функциясынын кайтаруусу
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
