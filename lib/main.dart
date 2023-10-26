import 'package:flutter/material.dart';
import 'package:qaed/screens/about_us.dart';
import 'package:qaed/screens/counter.dart';
import 'package:qaed/screens/home.dart';
import 'package:qaed/screens/new_note.dart';
import 'package:qaed/screens/notes.dart';
import 'package:qaed/screens/ruler.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.Route,
      routes: {
        Home.Route: (context) => Home(),
        Ruler.Route: (context) => Ruler(),
        About_us.Route: (context) => About_us(),
        Notes.Route: (context) => Notes(),
        New_note.Route: (context) => New_note(),
        Counter.Route: (context) => Counter(),
      },
    );
  }
}














// theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),











//   backgroundColor:
                    //     MaterialStateProperty.resolveWith<Color?>(
                    //         (Set<MaterialState> states) {
                    //   if (states.contains(MaterialState.pressed)) {
                    //     return Theme.of(context)
                    //         .colorScheme
                    //         .primary
                    //         .withOpacity(1);
                    //   }
                    // })
//   backgroundColor: Color.fromARGB(255, 11, 118, 200),
//   appBar: AppBar(
//     title: Text(
//       'qaed',
//     ),
//     backgroundColor: Color.fromARGB(255, 78, 142, 181),
//   ),
//   body: Center(
//       child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Text(
//         'حاول مرة اخرى',
//         style: TextStyle(
//           fontSize: 30,
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//       ),
//       Row(
//         children: [
//           Expanded(
//             //flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Image.asset('images/img1.JPG'),
//             ),
//           ),
//           Expanded(
//             //flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Image.asset('images/img1.JPG'),
//             ),
//           )
//         ],
//       ),
//     ],
//   )),
// body: SafeArea(
//   child: Padding(
//     padding: const EdgeInsets.all(30.0),
//     child: Column(
//       children: [
//         CircleAvatar(
//           radius: 70,
//           backgroundImage: AssetImage('images/img1.JPG'),
//         ),
//         Text(
//           'qaed',
//           style: TextStyle(
//               fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
//         ),
//         Card(
//           margin: EdgeInsets.all(20),
//           color: Colors.amber,
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('اكتب رقم'),
//                   Text('    '),
//                   Text('12345')
//                 ]),
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(20),
//           color: Colors.amber,
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('اكتب رساله'),
//                   Text('    '),
//                   Text('.....')
//                 ]),
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(20),
//           color: Colors.amber,
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('qaed'),
//                   Text('    '),
//                   Text('774-942-724')
//                 ]),
//           ),
//         ),
//       ],
//     ),
//   ),

//   // Row(
//   //   //mainAxisSize: MainAxisSize.min,
//   //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //   // verticalDirection: VerticalDirection.down,
//   //   crossAxisAlignment: CrossAxisAlignment.stretch,
//   //   children: [
//   //     Container(
//   //       child: Text('mahdi'),
//   //       height: 100,
//   //       width: 200,
//   //       color: Colors.blue,
//   //       // margin: EdgeInsets.all(100),
//   //       // padding: EdgeInsets.all(200),
//   //     ),
//   //     SizedBox(
//   //       width: 30,
//   //     ),
//   //     Container(
//   //       child: Text('mahdi'),
//   //       height: 100,
//   //       width: 100,
//   //       color: const Color.fromARGB(255, 121, 33, 243),
//   //       // margin: EdgeInsets.all(100),
//   //       // padding: EdgeInsets.all(200),
//   //     ),
//   //   ],
//   // ),
// ),




// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   AssetImage img = AssetImage('images/ruler.png');
//   Color col = Colors.red;
//   String tex = 'esam';
//   @override
//   Widget build(BuildContext context) {
//     void btn1() {
//       setState(() {
//         runApp(page());
//       });
//     }

//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('qaed'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Container(
//                   width: 70,
//                   height: 70,
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage('images/icon.png'),
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 263),
//               child: TextButton(
//                   onPressed: btn1,
//                   child: Text(
//                     'home',
//                     style: TextStyle(fontSize: 25, color: Colors.black),
//                   )),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
