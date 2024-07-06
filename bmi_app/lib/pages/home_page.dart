import 'package:bmi_app/colors.dart';
import 'package:flutter/material.dart';

class homepges extends StatefulWidget {
  const homepges({super.key});

  @override
  State<homepges> createState() => _homepgesState();
}

class _homepgesState extends State<homepges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(children: [
        Expanded(child: Container(
          decoration: BoxDecoration(color: KBlue),
          child: GestureDetector(
            onTap: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.male,
              color: Colors.white,
              size: 84,
              ),
              SizedBox(
                height: 16,
              ),
              Text('Male',
              style: TextStyle(color: Colors.white, fontSize: 38),
              ),
            ],
            ),
          ),
        ),
        ),

        Expanded(child: Container(
          decoration: BoxDecoration(color: kRed),
          child: GestureDetector(
            onTap:(){} ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.male,
              color: Colors.white,
              size: 84,
              
              ),
              SizedBox(
                height: 16,
              ),
              Text('Female',
              style: TextStyle(color: Colors.white, fontSize: 38),
              
              ),
            ],
            ),
          ),
        ),
        ),


      ],
      ),
      ),


    );
  }
}