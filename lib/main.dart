// import 'package:ecommerce/Screens/ProductScreen.dart';
// import 'package:ecommerce/Screens/ProductScreen.dart';
import 'package:ecommerce/Screens/homeScreen.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
