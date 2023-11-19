
import 'package:ecommerce/Screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class approuts {
//   static var homescreen = '/homescreen';
//   static var productScreen = '/productscreen';

//   static Map<String, Widget Function(BuildContext)> myroutes() {
//     return {
//       homescreen: (context) => HomeScreen(),    };
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
