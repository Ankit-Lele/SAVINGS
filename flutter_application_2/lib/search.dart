import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/SearchResult.dart';
import 'package:flutter_application_2/gsearch.dart';
//import 'package:flutter_application_2/main.dart';



class Search extends StatelessWidget {

  const Search({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  MaterialApp(
      home: Scaffold(
      appBar: AppBar(leadingWidth: 150,
       leading: TextButton(onPressed:()=>{Navigator.pop(context)} , child: const Text("SAVINGS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
        actions:[
          
          IconButton(icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
               )]
      ),
 
      body: 
      
      Column(
        children: [
          Expanded(child: 
          GridView.count(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            crossAxisSpacing: 10,
            primary: false,
            crossAxisCount: 2,
            childAspectRatio: 20,
            children: [
            //margin: EdgeInsets.only(left: 20, top: 50),
            Container(
            child: const SearchBar(autoFocus: true, ),
            ),
            Container(
              child: TextButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
             {
              return   const Searchresult();}) )}, child:  const Text("GO", style: TextStyle( fontFamily: 'Playwrite', fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
            )
        ])),
          Expanded(child: 
          GridView.count(
            padding: const EdgeInsets.only(left: 40, right: 40),
            crossAxisSpacing: 100,
            mainAxisSpacing: 30,
            primary: false,
            crossAxisCount: 3,
            childAspectRatio: 1.220,//(screenWidth-360)/(screenHeight*2.2),
            children: [
              Container(
                
                decoration:  BoxDecoration(
                   border: Border.all(width: 0, color: Colors.transparent),
                   borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors: <Color>[
        Colors.deepPurple,
        Colors.purple,
        Colors.deepPurpleAccent,
      ],),),
                //constraints: BoxConstraints(maxHeight: 2000),
                child: TextButton(onPressed:()=>{Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
             {
              return   const Gsearch();}) )} ,style: generatedButton(), child:  const Text("what's trending?", style: TextStyle( fontFamily: 'Playwrite', fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
              ),
              Container(
                decoration:  BoxDecoration(
                  border: Border.all(width: 0, color: Colors.transparent),
                   borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors: <Color>[
        Colors.deepPurple,
        Colors.purple,
        Colors.deepPurpleAccent,
      ],),),
                child: TextButton(onPressed:()=>{Navigator.pop(context)} , style: generatedButton(),child: const Text("Personalised Discounts ",style: TextStyle(fontFamily: 'Playwrite', fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
              ),
              Container(
                decoration:  BoxDecoration(
                  border: Border.all(width: 0, color: Colors.transparent),
                   borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors: <Color>[
        Colors.deepPurple,
        Colors.purple,
        Colors.deepPurpleAccent,
      ],),),
                child: TextButton(onPressed:()=>{Navigator.pop(context)} , style: generatedButton(), child: const Text("Surprise me!!",style: TextStyle(fontFamily: 'Playwrite', fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
              ),
            ],
            ))
        ]
    ),
    
    ));
  }
  ButtonStyle generatedButton(){
  return ButtonStyle(
  overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
  
// buttons with purple themed gradient background
  alignment: Alignment.center,
  animationDuration: const Duration(milliseconds: 200),
  backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
  foregroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 253, 253, 253)),
  shape: WidgetStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(color: Colors.deepPurple),
    ),
  ),
  elevation: WidgetStateProperty.all<double>(14),
  fixedSize: WidgetStateProperty.all<Size>(const Size(235, 541)),
  minimumSize: WidgetStateProperty.all<Size>(const Size(235, 541)),
);  //add a button height and width property for 235 and 541 respectively
  
  }//give me a buttonstyle with a rectangular button with a border
}
