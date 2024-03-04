// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, depend_on_referenced_packages, unused_import



import "dart:async";
import "dart:html";
import "dart:ui";
import "package:bmi/events.dart";
import "package:flutter/foundation.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:flutter/material.dart";

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({super.key});
  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  TextEditingController _value1 = TextEditingController();
  TextEditingController _value2 = TextEditingController();
  final _MyCalculator = Hive.box('MyCalculator');
  List values = [];

  
   calculation(weight,height){
    double height1 = int.parse(height) / 100;
    double bmi = int.parse(weight) / (height1*height1);
    return num.parse(bmi.toStringAsFixed(1));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListView(
        scrollDirection: Axis.vertical,
        children: [
          
          Center(
            child: Padding(
              padding: EdgeInsets.only(top : 100.0),
              child: Text(
                "Body Mass Index!!",
                 style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                 
                ),
            ),
              
              
          ),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _value1,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 200.0)),hintText: "Enter your height in cms"),
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.only(left : 8.0, top: 20.0,right:8.0,bottom: 8.0),
                  child: TextField(
                    controller: _value2,
                    onSubmitted: (value) => values[1],
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 200.0)),hintText: "Enter your Weight in Kgs"),
                  ),
                ),
              ]
            ),
          ),

          Container(
            padding: EdgeInsets.only(top:50.0),
            height: 100,
            width: 25,
            child: FloatingActionButton(
                onPressed: (){
                  String weight = _value2.text;
                  String height = _value1.text;
                  double bmiValue = calculation(weight,height);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => results( '$bmiValue'),),);
                },
            child: Text("Submit"), 
                
            ),      
          )
        ],
      )
    );
  }
}

