import 'package:flutter/material.dart';
// import 'package:providerexamplelast/pro.dart';

class pro extends StatelessWidget {
  const pro({super.key});

  @override
  Widget build(BuildContext context) {
    var Provider;
    var co = Provider.of<pro>(context);
    return Text(
      '${co}',
      style: TextStyle(fontSize: 20),
    );
  }
}
