import 'dart:math';

import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ismale = true;
  double hight = 180;
  int age =20;
  int weight = 50;
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.calculate,
        ),
        title: Text('BMI calculator '),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[600],
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState((){
                                  ismale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: ismale? Colors.blue: Colors.grey),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      color: ismale? Colors.white: Colors.black,
                                      size: 100,
                                    ),
                                    Text(
                                      'MALE',
                                      style: TextStyle(
                                          color: ismale? Colors.white: Colors.black, fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  ismale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: ismale? Colors.grey[500]: Colors.blue),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: !ismale? Colors.white: Colors.black,
                                      size: 100,
                                    ),
                                    Text(
                                      'FEMALE',
                                      style: TextStyle(
                                          color: !ismale? Colors.white: Colors.black, fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[500]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Hight',
                              style: TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${hight.round()}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 40),
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                            Slider(
                                value: hight,
                                max: 240,
                                min: 100,
                                onChanged: (value) {
                                  setState(() {
                                    hight=value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[500]),
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'weight',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(fontSize: 35),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weight-',
                                    onPressed: () {
                                      setState(() {
                                         weight--;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                    mini: true,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'weight+',
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                    ),
                                    mini: true,
                                  ),
                                ],
                              )
                            ],
                              ),
                            ),
                          ),

                          
                          SizedBox(
                            width: 20,
                          ),


                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[500]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(fontSize: 35),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: 'age-',
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                      ),
                                      mini: true,
                                    ),
                                    FloatingActionButton(
                                      heroTag: 'age+',
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                      ),
                                      mini: true,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(color: Colors.blue),
            child: MaterialButton(
              child: Text(
                'Calc',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: () {
                 result= weight / pow(hight/ 100,2);
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>resultscreen(age: age,ismale: ismale, result: result.round(),)));
              },
            ),
          )
        ],
      ),
    );
  }
}
