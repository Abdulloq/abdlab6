
import 'package:flutter/material.dart';
import 'package:lab6/second_screen.dart';
import 'package:lab6/third_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nav example"),

      ),
      body:Padding(
        padding: EdgeInsets.all(40),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>SecondScreen(),
    ),
    );
    },
            child: Text ("Push"),
          ),
      ElevatedButton(
        onPressed: (){
          Navigator.pushNamed( context,
            '/second');
        },
        child: Text ("PushNamed"),
      ),
          //pushReplacement
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                  MaterialPageRoute(
                    builder: (context)=> ThirdScreen(),
              ),
              );
            },
            child: Text ("PushReplacement"),
          ),
          ElevatedButton(
              onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                (route)=> false);
              },
          child: Text("PushAndRemoveUntil"),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/second', (route)=>false);
          },
          child: Text ("pushNamedAndRemoveUntil"),
    ),
      ],
      ),
    ),
    );
  }
}