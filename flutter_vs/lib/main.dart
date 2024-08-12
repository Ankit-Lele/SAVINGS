// ignore_for_file: prefer_const_constructors

//import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    

    
    // give me a gradient theme with green and teal colors as the background colors
   // Gradient:LinearGradient(colors:[Color(0xFF1DCD8D),Color(0xFF006c77)]  );
    return MaterialApp(
      theme: ThemeData(
        
        colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff33691e), // green
        onPrimary: Colors.white,
        primaryContainer: Color(0xff4caf50),
        onPrimaryContainer: Colors.black,
        secondary: Color(0xff009688), // teal
        onSecondary: Colors.white,
        secondaryContainer: Color(0xff00acc1),
        onSecondaryContainer: Colors.black,
        background: Color.fromARGB(123, 145, 143, 77),
        onBackground:  Colors.green,
        surface: Color(0xfff2f2f2),
        onSurface: Colors.black,
        error: Color(0xffd32f2f), // red
        onError: Colors.white,
        errorContainer: Color(0xfff2dede),
        onErrorContainer: Colors.black,
        outline: Color(0xff9e9e9e),
        outlineVariant: Color(0xff424242),
        shadow: Color(0xff000000),
        inverseSurface: Color(0xff212121),
        onInverseSurface: Colors.white,
        inversePrimary: Color(0xffc6ff00),
        surfaceTint: Color(0xff33691e)
        ), 
        
    ),
      home: Scaffold(
       
      appBar: AppBar(
        backgroundColor:Color.fromARGB(123, 145, 143, 77),
        
        leading: TextButton(onPressed:()=>{} , child: Text("SAVINGS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null, color: Colors.black),),),
        leadingWidth: 150,
      
      
       //create a button style that displays the Text "SAVINGS" AT THE TOP LEFT CORNER AND IT REDIRECTS TO HOME PAGE ON CLICKING
          
        //title: Text("SAVINGS", 
        //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null, color: Color.fromARGB(255, 255, 255, 255))),
        actions:[
          
          IconButton(icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
               )

        ],/*<Widget>[
    IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
          ),
          ],
          <Widget>[
    IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
          ),
          ],),

        /*Container(
            child :IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
          ),
        )*/
        ],*/),
    body: 
  
    GridView.count(
      
      primary: false,
      //padding: const EdgeInsets.all(20),
      
  crossAxisSpacing: 10,//MediaQuery.of(context).size.aspectRatio,
  mainAxisSpacing: 10.0,//MediaQuery.of(context).size.aspectRatio,
  crossAxisCount: 2,
      children: [
        Column( 
    children: [

        
      Container(
  
      //constraints: BoxConstraints(maxHeight: 5, maxWidth: 5,minHeight: 5,minWidth: 5 ),
      //height: screenHeight,
      //width:screenWidth,
      padding: EdgeInsets.only(left: 200.0,top: 130.0,right: 100.0),
      child: AnimatedAlign( alignment:  Alignment.bottomCenter,curve: Curves.fastLinearToSlowEaseIn, widthFactor: 1.3, heightFactor: 1.0, duration : const Duration(seconds: 3), child: Text("Get What You Want Without Breaking the Bank.", 
      style: TextStyle(fontFamily: 'Playwrite', fontSize: 50),),),
      
      ),Container(
        //height: MediaQuery.of(context).size.aspectRatio,
        //width:MediaQuery.of(context).size.aspectRatio,
        padding: EdgeInsets.only(left: 200.0,top: 30.0,right: 100.0),
        child: SearchBar(autoFocus: true, constraints: BoxConstraints(minHeight: 35),  ) ,
        //child:SearchBarTheme(child: IconButton( icon: const Icon(Icons.search), onPressed: () => {},) ,data: SearchBarThemeData(),),
      ) ,
      Container(
        alignment: Alignment.topRight,
        //height: 45,
        //width:225,
        padding: EdgeInsets.only(top: 20, right: 100),
        child: TextButton(onPressed: () => {},style: generatedButton(), child: Text("SEARCH", style: TextStyle(color: Colors.white, fontFamily: 'Playwrite', fontSize: 20, fontWeight: FontWeight.bold),),)
      )
      ],),
      Column( children: [
      Container(
         padding: EdgeInsets.only(left: 200.0,top: 30.0,right: 100.0),
          //height: screenHeight,
          //width:screenWidth,
         child: Image.asset("pig.png" , /*alignment: Alignment.topLeft,*/ ),
      ),
      ],),
      

      
    ],)
    
      
      ),
    );
  }
}
ButtonStyle generatedButton(){
  return const ButtonStyle(
    //alignment: Alignment.center,
    //button alignment
//add text on button
  backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF1DCD8D)),
  foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
  overlayColor: WidgetStatePropertyAll<Color>(Colors.cyan),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      side: BorderSide(color: Colors.black87, width: 1.0),
      
    ),
  ),
)//increase the radius of the button 
//
  ;
}
//give me a gradient color scheme
 


//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

/*void main() {
  runApp( 
    MaterialApp(
      
    home: Scaffold(
      backgroundColor: Color(0xFF1DCD8D),
      appBar: AppBar(
        backgroundColor: Color(0xFF1DCD8D),
       leading: TextButton(onPressed:()=>{} , child: Text("SAVINGS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null, color: Colors.black),),),
        leadingWidth: 150,
       actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
          ), 
        ]),
    body: 
    GridView.count(
      crossAxisCount: 2,
      
      children: [
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
      Container(
        //height: screenHeight,
      //width:screenWidth,
        padding: EdgeInsets.only(top:30, right: 80),
        child: TextButton(onPressed: () => {},style: generatedButton(), child: Text("SEARCH", style: TextStyle(color: Colors.black87, fontFamily: 'Playwrite', fontSize: 20, fontWeight: FontWeight.bold),),)
      )
      ],
      
      ),
      
     ],
    ), ),
    ),
    
  );
}*/



//give me a search bar theme having a search icon at the right hand corner with white search bar