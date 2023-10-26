import 'package:flutter/material.dart';
import 'package:qaed/models/task.dart';
import 'package:qaed/widgets/task_list.dart';

class tasklist extends StatefulWidget {
  const tasklist(Null Function(dynamic newtasktitle) param0, {
    super.key,
  });

  @override
  State<tasklist> createState() => _tasklistState();
}

class _tasklistState extends State<tasklist> {
  List<Task> tasks = [
    Task(addr: 'qaed', not: 'qqqqqqq'),
    Task(addr: 'raed', not: 'rrrrrrr'),
    Task(addr: 'haed', not: 'hhhhhhh'),
    Task(addr: 'waed', not: 'wwwwwww'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return tilelist(
            isChecked: tasks[index].isDone, 
            taktitle: tasks[index].addr,
            checkboxchange:(newValue) {
        setState(() {
          tasks[index].donechange();
        });
      }
            );
      },
    );
    // return ListView(
    //   children: [
    //     tilelist(
    //       taktitle: tasks[0].addr,
    //       isChecked: tasks[0].isDone,
    //     ),
    //     tilelist(
    //       taktitle: tasks[1].addr,
    //       isChecked: tasks[1].isDone,
    //     ),
    //     tilelist(
    //       taktitle: tasks[2].addr,
    //       isChecked: tasks[2].isDone
    //     ),
    //   ],
    // );
  }
}
