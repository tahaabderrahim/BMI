import 'package:bmi_app/pages/control.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(bim_app());
}
class bim_app extends StatelessWidget {
  const bim_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cntrl(), 
);
  }
}
