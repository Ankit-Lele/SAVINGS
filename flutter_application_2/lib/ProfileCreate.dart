import 'package:flutter/material.dart';


class Profilecreate extends StatefulWidget {
  const Profilecreate({super.key});

  @override
  State<Profilecreate> createState() => _ProfilecreateState();
}

class _ProfilecreateState extends State<Profilecreate> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form 
  String _name = ''; // Variable to store the entered name 
  String _email = ''; // Variable to store the entered email 
  String dropdownvalue = 'VISA';    
  
  // List of items in our dropdown menu 
  var items = [     
    'VISA', 
    'Mastercard', 
    'American Express', 
    'Discover', 
     
  ]; 
  
  void _submitForm() { 
    // Check if the form is valid 
    if (_formKey.currentState!.validate()) { 
      _formKey.currentState!.save(); // Save the form data 
      // You can perform actions with the form data here and extract the details 
  
    } 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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
      Column(children: [
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          margin: EdgeInsets.only(left: 550, top: 40),
        child:  Form(
      
  autovalidateMode: AutovalidateMode.onUserInteraction, 
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, right: 100, left: 100),
              width: 500,
              height: 100,
              child: 
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                autocorrect: true,
             
                scrollPadding: EdgeInsets.only(left: 40),
                 // Label for the name field
                validator: (value) {
                  // Validation function for the name field
                  if (value!.isEmpty) {
                    return 'Please enter your name.'; // Return an error message if the name is empty
                  }
                  return null; // Return null if the name is valid
                
                },
                onSaved: (value) {
                  _name = value!; // Save the entered name
                },
              ),),
              Container(
              margin: EdgeInsets.only(top: 40, right: 100, left: 100),
              width: 500,
              height: 100,
              child: 
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                autocorrect: true,
             
                scrollPadding: EdgeInsets.only(left: 40),
                 // Label for the name field
                validator: (value) {
                  // Validation function for the name field
                  if (value!.isEmpty) {
                    return 'Please enter your email.'; // Return an error message if the name is empty
                  }
                  return null; // Return null if the name is valid
                
                },
                onSaved: (value) {
                  _email = value!; // Save the entered name
                },
              ),),
              Container(
              margin: EdgeInsets.only(top: 40, right: 100, left: 100),
              width: 500,
              height: 50,
              child: 
               DropdownButton( 
                hint: Text('Select your card'),
              // Initial Value 
              value: dropdownvalue, 
                
              // Down Arrow Icon 
              icon: const Icon(Icons.keyboard_arrow_down),     
                
              // Array list of items 
              items: items.map((String items) { 
                return DropdownMenuItem( 
                  value: items, 
                  child: Text(items), 
                ); 
              }).toList(), 
              // After selecting the desired option,it will 
              // change button value to selected value 
              onChanged: (String? newValue) {  
                setState(() { 
                  dropdownvalue = newValue!; 
                });}
              ),
              
        )],
        )  )
      ,  
        )
      ],),
      ),

    );
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
  
  }
}