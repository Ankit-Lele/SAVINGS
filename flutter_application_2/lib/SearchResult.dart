import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/main.dart';



class Searchresult extends StatefulWidget {
  const Searchresult({super.key});

  @override
  State<Searchresult> createState() => _SearchresultState();
}

class _SearchresultState extends State<Searchresult> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(leadingWidth: 150,
       leading: TextButton(onPressed:()=>{Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return const MyHomePage(title: '',);
       }))} , child: const Text("SAVINGS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
        actions:[
          
          IconButton(icon: Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {
               },
               )]
      ),
      body: 
      GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.only(left: 40, right: 40),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.6,
        children: [
          Column(
            children: [
          Container(
            child: Image.asset('assets/images/vecteezy_amazon-logo-on-transparent-background_14018561.jpg'),
            ),
            Container(
              child: Text('On amazon you get this product at this price', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 43,maxWidth: 205),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(right: 80, top: 20),
              child: TextButton(onPressed:()=>{}  , style: generatedButton(),child: const Text('Go to Amazon ->', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25), textAlign: TextAlign.center  ),),
            ),
            
          ],),
          Column(
            children: [
          Container(
            child: Image.asset('assets/images/vecteezy_amazon-logo-on-transparent-background_14018561.jpg'),
            ),
            Container(
              child: Text('On amazon you get this product at this price', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 43,maxWidth: 205),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(right: 80, top: 20),
              child: TextButton(onPressed:()=>{}  , style: generatedButton(),child: const Text('Go to Amazon ->', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25), textAlign: TextAlign.center  ),),
            ),
            
          ],),
          Column(
            children: [
          Container(
            child: Image.asset('assets/images/vecteezy_amazon-logo-on-transparent-background_14018561.jpg'),
            ),
            Container(
              child: Text('On amazon you get this product at this price', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 43,maxWidth: 205),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(right: 80, top: 20),
              child: TextButton(onPressed:()=>{}  , style: generatedButton(),child: const Text('Go to Amazon ->', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25), textAlign: TextAlign.center  ),),
            ),
            
          ],),
          Column(
            children: [
          Container(
            child: Image.asset('assets/images/vecteezy_amazon-logo-on-transparent-background_14018561.jpg'),
            ),
            Container(
              child: Text('On amazon you get this product at this price', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 43,maxWidth: 205),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(right: 80, top: 20),
              child: TextButton(onPressed:()=>{}  , style: generatedButton(),child: const Text('Go to Amazon ->', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25), textAlign: TextAlign.center  ),),
            ),
            
          ],),
           
        ],
      )
      ),
    );
  }
  ButtonStyle generatedButton(){
  return ButtonStyle(
  overlayColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 197, 133, 224)),
  
// buttons with purple themed gradient background
  //alignment: Alignment.topLeft,
  animationDuration: const Duration(milliseconds: 200),
  backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
  foregroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 153, 86, 182)),
  //shape: WidgetStateProperty.all<OutlinedBorder>(
    //RoundedRectangleBorder(
      //borderRadius: BorderRadius.circular(10.0),
      //side: const BorderSide(color: Colors.deepPurple),
    //),
  //),
  elevation: WidgetStateProperty.all<double>(14),
  fixedSize: WidgetStateProperty.all<Size>(const Size(200, 43)),
  minimumSize: WidgetStateProperty.all<Size>(const Size(200, 43)),
);  //add a button height and width property for 235 and 541 respectively
  
  }
}