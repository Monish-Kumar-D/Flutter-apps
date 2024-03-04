// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import "package:flutter/material.dart";

class notes extends StatelessWidget {
  const notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[200],
          title : Center(child: Text("Hello")),
          toolbarHeight: 100.0,
        ),
       body: Center(
         child: Container(
           child : ListView(
             children: [
              
               TextFormField(  
                scrollPadding: EdgeInsets.all(10.0),
                cursorColor: Colors.black,
                style: const TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                autocorrect: true,
                autofocus: true,
                maxLines: 25,
                maxLength: 300, 
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:3, color:Colors.black12),)
                ),
               ),
               TextField(
                
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3.0, color:Colors.pink)),
                  contentPadding: EdgeInsets.all(8.0)
                ),
               )
             ],
           ),
         ),
         
       ), 
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.deepPurple[700], 
          child: Text("Submit",),
          hoverColor: Colors.deepPurple[600],
          focusColor: Colors.deepPurple[600],
          ),
        height: 60,
        width: 150,
        ),
      );
  }
}