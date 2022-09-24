import 'package:flutter/material.dart';

class resultscreen extends StatelessWidget {
  final int result;
  final bool ismale;
  final int age;
  String gender = 'male';
  resultscreen({
    required this.result,
    required this.age,
    required this.ismale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[600]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Gender : ${gender = ismale ? 'male' : 'female'}',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black)),
                  Text('Result : $result',
                      style: TextStyle(
                          fontSize: 30,
                        color: Colors.black)),
                  Text('Age : $age',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
