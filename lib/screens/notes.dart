// import 'package:first_app/screens/about_us.dart';
import 'package:qaed/db.dart';
import 'package:qaed/screens/home.dart';
import 'package:qaed/screens/new_note.dart';
import 'package:qaed/db.dart';
import 'package:flutter/material.dart';
import 'package:qaed/screens/order.dart';
import 'package:qaed/screens/ruler.dart';
import 'package:qaed/widgets/tasks_list.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//             floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 runApp(New_note());
//                 // showModalBottomSheet(
//                 //   context: context,
//                 //   builder: (context) =>
//                 // );
//               },
//               backgroundColor: Color.fromARGB(255, 9, 5, 127),
//               child: Icon(Icons.add),
//             ),
//             appBar: AppBar(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     child: ElevatedButton.icon(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll<Color>(
//                             Color.fromARGB(0, 234, 24, 24)),
//                         shadowColor: MaterialStatePropertyAll<Color>(
//                             Color.fromARGB(0, 255, 255, 255)),
//                         iconSize: MaterialStatePropertyAll(30),
//                       ),
//                       onPressed: () {
//                         runApp(
//                           Home(),
//                         );
//                       },
//                       icon: BackButtonIcon(),
//                       label: Text(
//                         '',
//                         style: TextStyle(
//                             color: Color.fromARGB(255, 255, 255, 255)),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text('ملاحظات'),
//                     ],
//                   ),
//                 ],
//               ),
//               backgroundColor: Color.fromARGB(255, 9, 5, 127),
//             ),
//             body: Container(
//                 color: Color.fromARGB(77, 0, 98, 255),
//                 padding: const EdgeInsets.only(
//                   top: 60,
//                   left: 20,
//                   right: 20,
//                   bottom: 80,
//                 ),
//                 child: tasklist())),
//       ),
//     );
//   }
// }

class Notes extends StatefulWidget {
  static const String Route = 'notes';
  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    // if (note().notee != null) {
    //   String? n = note().notee;
    // } else {
    //   String n = '';
    // }
    // if (note().address != null) {
    //   String? d = note().address;
    // } else {
    //   String d = '';
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  runApp(New_note());
                  // showModalBottomSheet(
                  //   context: context,
                  //   builder: (context) =>
                  // );
                });
              },
              backgroundColor: Color.fromARGB(255, 9, 5, 127),
              child: Icon(Icons.add),
            ),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text('ملاحظات'),
                    ],
                  ),
                ],
              ),
              backgroundColor: Color.fromARGB(255, 9, 5, 127),
            ),
            body: Container(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 20,
                  right: 20,
                  bottom: 80,
                ),
                child: tasklist((newtasktitle) {}))),
      ),
    );
  }
}
