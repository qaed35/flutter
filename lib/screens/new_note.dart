// import 'package:first_app/screens/about_us.dart';
// import 'package:first_app/screens/hoom.dart';
// import 'dart:math';

import 'package:qaed/db.dart';
import 'package:qaed/screens/notes.dart';
import 'package:qaed/screens/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qaed/widgets/tasks_list.dart';

final GlobalKey<FormState> formStateKey = GlobalKey<FormState>();

class New_note extends StatefulWidget {
  late final Function addtaskcallback;
  // New_note(this.addtaskcallback);
  // ignore: constant_identifier_names
  static const String Route = 'new_note';
  @override
  State<New_note> createState() => _New_noteState();
}

// ignore: camel_case_types
class _New_noteState extends State<New_note> {
  String? _valReq(String value) {
    if (value.isEmpty) {
      return 'item required';
    } else {
      return null;
    }
  }

  ///////////////////////////////////////////////
  Future<void> _sub() async {
    if (formStateKey.currentState!.validate()) {
      formStateKey.currentState!.save();
      // ignore: avoid_print
      print(order().itme);
      print(order().itme1);
      print('successful');
      runApp(Notes());
    }
  }

  // TextEditingController _tfc = new TextEditingController();
  final addrControllr = TextEditingController();
  final noteControllr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? newtasktitle;
    String? newtasktitle1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(0, 234, 24, 24)),
                      shadowColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(0, 255, 255, 255)),
                      iconSize: MaterialStatePropertyAll(30),
                    ),
                    onPressed: () {
                      setState(() {
                        runApp(
                          Notes(),
                        );
                      });
                    },
                    icon: const BackButtonIcon(),
                    label: const Text(
                      '',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text('ملاحظة جديدة'),
                    ],
                  ),
                ],
              ),
              backgroundColor: const Color.fromARGB(255, 9, 5, 127),
            ),
            body: Container(
              color: const Color.fromARGB(255, 198, 191, 191),
              child: Form(
                key: formStateKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                        margin: const EdgeInsets.all(15),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: TextFormField(
                            // maxLines: 1,
                            decoration: const InputDecoration(
                                label: Text(
                              'العنوان',
                              style: TextStyle(
                                  color: Color.fromARGB(130, 0, 0, 0)),
                            )),
                            keyboardType: TextInputType.text,
                            controller: addrControllr,
                            validator: (value) => _valReq(value!),
                            onSaved: (value) => order().itme = value,
                            onChanged: (nt) {
                              newtasktitle = nt;
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Card(
                        margin: const EdgeInsets.all(15),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Expanded(
                              child: TextFormField(
                            maxLines: 20,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            decoration: const InputDecoration(
                                label: Text(
                              'المحتوى',
                              style: TextStyle(
                                  color: Color.fromARGB(130, 0, 0, 0)),
                            )),
                            keyboardType: TextInputType.text,
                            controller: noteControllr,
                            validator: (value) => _valReq(value!),
                            onSaved: (value) => order().itme1 = value,
                            onChanged: (nt1) {
                              newtasktitle1 = nt1;
                            },
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 0, 0, 0)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(0, 255, 255, 255)),
                              shadowColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(99, 200, 200, 200))),
                          onPressed: () {
                            ;
                            tasklist((newtasktitle) => newtasktitle);
                            print(newtasktitle1);
                            _sub();
                          },
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
    // showDialog(
    //     context: context,
    //     builder: (_) {
    //       return New_note();
    //     });
  }

  void _sfd() {
    var alert = new AlertDialog();
  }

  void _subt() {}
}
