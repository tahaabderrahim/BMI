import 'package:bmi_app/colors.dart';
import 'package:flutter/material.dart';

class Cntrl extends StatefulWidget {
  const Cntrl({super.key});

  @override
  State<Cntrl> createState() => _CntrlState();
}

class _CntrlState extends State<Cntrl> {
  int wehight = 25;
  int height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:8,
                        ),
                        child:  Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                        color: KBlue,
                        size:26,
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                                     },
                        ),
                         Text(
                          'BMI', 
                          style: TextStyle(color: KBlue, fontSize:26),
                          ),
                      ],
                    ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Male'),
                          Icon(Icons.male),
                          Text('Weight (KG)'),
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          itemCount: 30,
                          itemBuilder: (context, index){
                            int i =(index + 5)*5;
                            return 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                           GestureDetector(
                            onTap: (){
                              setState(() {
                                wehight = i;
                              });
                            },
                            child: Center(
                              child: Text("$i"),
                              ),
                              ),
                        );


                              }, 

                      ),
                    ),
                    
                  ],
                  ),
              ),
            ),
            ),
            Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(color:KBlue),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 42,
                    ),
                    Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          itemCount: 30,
                          itemBuilder: (context, index){
                            int i =(index + 25)*5;
                            return 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                           GestureDetector(
                            onTap: (){
                              setState(() {
                                wehight = i;
                              });
                            },
                            child: Center(
                              child: Text("$i"),
                              ),
                              ),
                        );


                              }, 

                      ),
                    ),
                    Text(
                      'Heught \n (CM)',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                        ),
                  ],
                  ),
              ),
            ),
            ),
        ],
      ),




    );
  }
}