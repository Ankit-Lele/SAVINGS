import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/ProfileCreate.dart';
import 'package:flutter_application_2/gsearch.dart';
//import 'package:flutter_application_2/sample.dart';
import 'package:flutter_application_2/search.dart';
//import 'package:google_fonts/google_fonts.dart' as gf;



void main() {
  runApp(const MyApp());
}
ColorScheme generatedScheme(){
  return const     ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffD500F9),
  onPrimary: Colors.white,
  primaryContainer: Color(0xffFF80AB),
  onPrimaryContainer: Color(0xff21005D),
  secondary: Color(0xffFF80AB),
  onSecondary: Colors.black,
  secondaryContainer: Color(0xffffFCD2),
  onSecondaryContainer: Color(0xff422B08),
  error: Color(0xffD32F2F),
  onError: Colors.white,
  errorContainer: Color(0xffF2B8B5),
  onErrorContainer: Color(0xff410002),
  background: Color(0xffFCF8FF),
  onBackground: Color(0xff201A20),
  surface: Color(0xffFEF2FE),
  onSurface: Color(0xff201A20),
  surfaceVariant: Color(0xffDBD5E0),
  onSurfaceVariant: Color(0xff49454F),
  outline: Color(0xff857E92),
  outlineVariant: Color(0xff68606F),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff362F33),
  onInverseSurface: Color(0xffFBF0F3),
  inversePrimary: Color(0xffD15B9D),
  surfaceTint: Color(0xffD500F9)
);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'SAVINGS',
      theme: ThemeData(
      
      //textTheme: gf.GoogleFonts.robotoCondensedTextTheme(),
        colorScheme: generatedScheme(),
        //keep one background image for
        //a light purple colorscheme

       // GIVE ME A THEME WITH A GRADIENT PURPLE COLOR AND BUKHARI SCRIPT AS A FONT 
      ),
      
     home: MyHomePage(title: 'SAVINGS'),
     
    );
  }
}

//give me a button style that goes with the colorschemeand has visible boundaries

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
       leading: TextButton(onPressed:()=>{Navigator.pop(context)} , child: const Text("SAVINGS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,foreground: null),),),
        actions:[
          
          IconButton(icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'Show Profile',
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
             {
              return   Profilecreate();}) );},
               )]
      ),
      body:  
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        Column(
          
          children: [
            Container( 
              constraints: const BoxConstraints(maxWidth: 650),
              margin: const EdgeInsets.only(left: 415, top: 150),
              child: const Text( 'Get what you want without breaking the bank', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Playwrite', fontSize: 45)),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 300),
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 30, top: 20),
             child: TextButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
             {
              return   Gsearch();}) )},
              child: const Text('Start Saving', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Playwrite', fontSize: 25),),)
            )
          ],
          
       ),
     
      );
  }
}
