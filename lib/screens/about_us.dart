import 'package:qaed/screens/home.dart';
import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  static const String Route = 'about';
  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
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
                    Text('About us'),
                  ],
                ),
              ],
            ),
            backgroundColor: Color.fromARGB(255, 9, 5, 127),
          ),
          body: Container(),
        ),
      ),
    );
  }
}
