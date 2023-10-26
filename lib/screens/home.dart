// import 'package:first_app/main.dart';
import 'package:qaed/screens/about_us.dart';
import 'package:qaed/screens/counter.dart';
import 'package:qaed/screens/notes.dart';
import 'package:qaed/screens/ruler.dart';
import 'package:flutter/material.dart';

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _LightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class Home extends StatefulWidget {
  static const String Route = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _LightTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('ادوات'),
            backgroundColor: Color.fromARGB(255, 70, 20, 136),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? _iconDark : _iconLight),
              ),
            ],
          ),
          drawer: Drawer(
              semanticLabel: 'Menu',
              child: ListView(
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                '',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'ادوات',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      )),
                  ListTile(
                    // leading: Icon(IconData(0xf44c, fontFamily: 'Mater')),
                    title: Container(
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(0, 234, 24, 24)),
                          shadowColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(0, 255, 255, 255)),
                          iconSize: MaterialStatePropertyAll(25),
                          iconColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 0, 0, 0)),
                        ),
                        onPressed: () {
                          setState(() {
                            runApp(
                              About_us(),
                            );
                          });
                        },
                        icon: Icon(Icons.question_mark),
                        label: Text(
                          'About us',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          body: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      color: Color.fromARGB(255, 146, 146, 146),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage('images/icon.png'),
                          ),
                          Text(
                            '   الادوات الاساسيه',
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ))),
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: GridView(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 2),
                      children: [
                        InkWell(
                          onTap: () {
                            ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 0, 0, 0)));
                          },
                          child: Expanded(
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(0, 255, 255, 255)),
                                  shadowColor: MaterialStatePropertyAll<Color>(
                                      Color.fromARGB(99, 200, 200, 200))),
                              onPressed: () {
                                setState(() {
                                  runApp(
                                    Ruler(),
                                  );
                                });
                              },
                              icon: Expanded(
                                child: Container(
                                  height: 80,
                                  width: 60,
                                  child: Image.asset('images/ruler.png'),
                                ),
                              ),
                              label: Text(
                                '  مقياس',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 0, 0, 0)));
                          },
                          child: Expanded(
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(0, 255, 255, 255)),
                                  shadowColor: MaterialStatePropertyAll<Color>(
                                      Color.fromARGB(99, 200, 200, 200))),
                              onPressed: () {
                                setState(() {
                                  runApp(Notes());
                                });
                              },
                              icon: Expanded(
                                child: Container(
                                  height: 80,
                                  width: 60,
                                  child: Image.asset('images/compass.png'),
                                ),
                              ),
                              label: Text(
                                '  ملاحظات',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 0, 0, 0)));
                          },
                          child: Expanded(
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(0, 255, 255, 255)),
                                  shadowColor: MaterialStatePropertyAll<Color>(
                                      Color.fromARGB(99, 200, 200, 200))),
                              onPressed: () {
                                setState(() {
                                  runApp(Counter());
                                });
                              },
                              icon: Expanded(
                                child: Container(
                                  height: 80,
                                  width: 60,
                                  child: Image.asset('images/compass.png'),
                                ),
                              ),
                              label: Text(
                                '  عداد',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
