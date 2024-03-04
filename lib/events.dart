// ignore_for_file: unused_import, prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables


import "package:flutter/material.dart";
import "package:bmi/calculator.dart";


class results extends StatefulWidget {
  final String bmiValue;
  
  results(this.bmiValue, {Key? key}) : super(key: key);

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body : Center(
        widthFactor: 25.0,
        child: Padding(
          padding: const EdgeInsets.only(top : 100.0),
          child: Column(
            children: [
              Text("Your Current BMI Score is " + widget.bmiValue ,style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 80.0, bottom: 20.0),
              child: Text("Chart of Reference "),

            ),
            Center(
              child: Table(
                textDirection: TextDirection.ltr,
                border:TableBorder.all(width: 0.50,color: Colors.white,borderRadius:BorderRadius.circular(25.0)),
              
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                       
                children: [
                  TableRow(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Classification",style: TextStyle(fontSize: 20.0),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("BMI Range - kg/m²",style: TextStyle(fontSize: 20.0),)),
                      )
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Severe Thiness")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("<16")),
                      ),
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Moderate thiness")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("16 - 17")),
                      ),
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Mild Thiness")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("17 - 18.5" )),
                      ),
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Normal")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("18.5 - 25")),
                      ),
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Overweight")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("25-30")),
                      ),
                    ]
                ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Obese")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(">30")),
                      ),
                    ]
                ),             
                ],
              ),
            )
            ],
          ),
        ),
      )
    );
  }
}