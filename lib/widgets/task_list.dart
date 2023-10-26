import 'package:flutter/material.dart';

class tilelist extends StatelessWidget {
  final bool isChecked;
  final String taktitle;
  final void Function(bool?) checkboxchange;

  tilelist(
      {required this.isChecked,
      required this.taktitle,
      required this.checkboxchange});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taktitle,
        ////////
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxchange,
      ),
    );
  }
}











// class taskchecbox extends StatelessWidget {
//   final bool? checkboxstate;
//   final Function(bool?) checkboxchange;
//   taskchecbox(this.checkboxstate, this.checkboxchange);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
