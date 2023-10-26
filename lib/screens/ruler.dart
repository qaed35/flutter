import 'package:qaed/screens/about_us.dart';
import 'package:qaed/screens/home.dart';
import 'package:flutter/material.dart';

class Ruler extends StatefulWidget {
  static const String Route = 'ruler';
  @override
  State<Ruler> createState() => _RulerState();
}

class _RulerState extends State<Ruler> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
                      '  ',
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
                    Text('مقياس'),
                    Hero(
                      tag: 'ruler',
                      child: Image.asset(
                        'images/ruler.png',
                        fit: BoxFit.fill,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            backgroundColor: Color.fromARGB(255, 225, 88, 15),
          ),
          drawer: isMobile
              ? Drawer(
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
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
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
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
              : null,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isDesktop
                  ? Container(
                      width: 250,
                      color: Color.fromARGB(144, 147, 9, 9),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Container(
                              child: ElevatedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
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
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  child: Center(child: Image.asset('images/img1.JPG')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
