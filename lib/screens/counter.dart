// import 'package:first_app/main.dart';
import 'package:qaed/screens/about_us.dart';
import 'package:qaed/screens/home.dart';
import 'package:qaed/screens/notes.dart';
import 'package:qaed/screens/ruler.dart';
import 'package:flutter/material.dart';
// import 'package:providerexamplelast/pro.dart';

void main() => runApp(MaterialApp(
      home: Counter(),
    ));

class Counter extends StatefulWidget {
  static const String Route = 'counter';

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int c = 0, n = 0;

  counter() {
    setState(() {
      c++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton:
              FloatingActionButton(child: Icon(Icons.add), onPressed: counter),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(0, 234, 24, 24)),
                      shadowColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(0, 255, 255, 255)),
                      iconSize: MaterialStatePropertyAll(30),
                    ),
                    onPressed: () {
                      setState(() {
                        runApp(
                          Home(),
                        );
                      });
                    },
                    icon: BackButtonIcon(),
                    label: Text(
                      '',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text('Counter'),
                  ],
                ),
              ],
            ),
            backgroundColor: Color.fromARGB(255, 9, 5, 127),
          ),
          body: Center(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              '$c',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class CounterP with ChangeNotifier {
  late int c;

  count() {
    c++;
    notifyListeners(); //lisener
  }
}
