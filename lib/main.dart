import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade500,
          title: Center(
            child: Text(
              "Lottery App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Lottery wining Number is 4",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: x==4? Colors.green.withOpacity(0.4) : Colors.blue.withOpacity(0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),

                  child: x==4 ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done,
                        size: 40,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cogrulations you have won the Lottery Your number is $x \n",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ) :  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_sharp,
                        size: 40,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Better Luck next time your number is :$x \nTry again",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
