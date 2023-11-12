import 'dart:async';

import 'package:flutter/material.dart';

List<dynamic> CatagoryList = [
  {'image': 'assets/icons/c6.jpg', "name": 'Shoes'},
  {'image': 'assets/icons/c7.png', "name": 'Gadgets'},
  {'image': 'assets/icons/c1.jpg', "name": 'Beauty'},
  {'image': 'assets/icons/c4.jpg', "name": "Woman's\n Fashion"},
  {'image': 'assets/icons/c5.jpg', "name": 'Jewelry'},
  {'image': 'assets/icons/c2.jpg', "name": "Men's\n Fashion"},
  {'image': 'assets/icons/c6.jpg', "name": 'Shoes'},
  {'image': 'assets/icons/c7.png', "name": 'Gadgets'},
  {'image': 'assets/icons/c1.jpg', "name": 'Beauty'},
  {'image': 'assets/icons/c4.jpg', "name": "Woman's\n Fashion"},
  {'image': 'assets/icons/c5.jpg', "name": 'Jewelry'},
  {'image': 'assets/icons/c2.jpg', "name": "Men's\n Fashion"},
];

var cartItem = 1;
var detailebtvalue = 1;
var discription =
    'Lorem ipsum dolor sit amet placerat, consectetur adipiscing elit in he surrounding text element of the product description text element of the product description text element of the product description text element of the product description text element of text element of the product description text element of the product description text element of the product description text element oftext element of the product description text element of the product description text element of the product description text element of ';
var specification =
    'Lorem ipsum dolor sit amet, consectetur adip occurence temp am  e justo in fac elementum in fac element   aliquet   in fac element aliquet in fac element aliquet in fac element aliquet in fac element aliqu   et aliquet in  fac element aliquet in fac element aliquet in fac element aliqu et al issuer in fac element aliquet in fac element aliquet in fac element aliqu';
var reviews =
    'Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)';
List<dynamic> Productgrid = [
  {
    'title': 'Wireless Headphones',
    'image': 'assets/headphones/hp1.png',
    'price': '120.00',
    'color': [Colors.black, Colors.blue, Colors.orange],
    'colorCount': '+2'
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': '120.00',
    'color': [Colors.pink, Colors.purple, Color(0xffe87445)],
    'colorCount': '+1'
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa3.png',
    'price': '680.00',
    'color': [Colors.yellow, Colors.red, Color(0xff911d30)],
    'colorCount': '+7'
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': '70.00',
    'color': [Colors.blue, Colors.blueGrey, Color(0xff1d4491)],
    'colorCount': '+2'
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': '200.00',
    'color': [Colors.orange, Colors.purple, Color(0xff1d4491)],
    'colorCount': '+3'
  },
  {
    'title': 'Man Snikers',
    'image': 'assets/shoes/shoes3.png',
    'price': '90.00',
    'color': [Colors.pink, Colors.deepPurple, Color(0xff90471e)],
    'colorCount': '+2'
  },
  {
    'title': 'Headphones',
    'image': 'assets/headphones2/hp1.png',
    'price': '120.00',
    'color': [Colors.black, Colors.blue, Colors.orange],
    'colorCount': '+4'
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': '120.00',
    'color': [Colors.blue, Colors.blueGrey, Color(0xff1d4491)],
    'colorCount': '+5'
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa2.png',
    'price': '680.00',
    'color': [Colors.orange, Colors.purple, Color(0xff1d4491)],
    'colorCount': '+6'
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes3.png',
    'price': '70.00',
    'color': [Colors.yellow, Colors.red, Color(0xff911d30)],
    'colorCount': '+2'
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': '200.00',
    'color': [Colors.pink, Colors.purple, Color(0xffe87445)],
    'colorCount': '+6'
  },
  {
    'title': 'Kids Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': '90.00',
    'color': [Colors.black, Colors.blue, Colors.orange],
    'colorCount': '+9'
  },
  {
    'title': 'Woman Headphones',
    'image': 'assets/headphones2/hp3.png',
    'price': '120.00',
    'color': [Colors.blue, Colors.blueGrey, Color(0xff1d4491)],
    'colorCount': '+1'
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': '120.00',
    'color': [Colors.pink, Colors.deepPurple, Color(0xff90471e)],
    'colorCount': '+3'
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa4.png',
    'price': '680.00',
    'color': [Colors.yellow, Colors.red, Color(0xff911d30)],
    'colorCount': '+4'
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes5.png',
    'price': '70.00',
    'color': [Colors.orange, Colors.purple, Color(0xff1d4491)],
    'colorCount': '+2'
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': '200.00',
    'color': [Colors.blue, Colors.blueGrey, Color(0xff1d4491)],
    'colorCount': '+7'
  },
  {
    'title': 'Man Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': '90.00',
    'color': [Colors.pink, Colors.purple, Color(0xffe87445)],
    'colorCount': '+2'
  },
];
