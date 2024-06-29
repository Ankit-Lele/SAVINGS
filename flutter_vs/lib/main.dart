// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( 
    MaterialApp(
      
    home: Scaffold(
      backgroundColor: Color(0xFF1DCD8D),
      appBar: AppBar(
        backgroundColor: Color(0xFF1DCD8D),
        title: Text("SAVINGS", 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null, color: Color.fromARGB(255, 255, 255, 255))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
          ), 
        ]),
    body: 
    Column(children: [
    Container(
      height: 410.0,
      width:600.0,
      padding: EdgeInsets.only(left: 200.0,top: 130.0,),
      child: Text("Get What You Want Without Breaking the Bank.", 
      style: TextStyle(fontFamily: 'Playwrite', fontSize: 50),
      ),
      ),
      Container(
      padding: EdgeInsets.only(left: 200.0,top: 30.0,),
      child: SearchBar(autoFocus: true, constraints: BoxConstraints(minHeight: 35.0,maxWidth: 400.0),) ,
      ),
      ],
      
      ),
      
      
      ),
    ),
    
  );
}
