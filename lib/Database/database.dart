import 'package:flutter/material.dart';

class uicolor {
  static Color myorange = Color(0xffff660e);
  static Color trans = Colors.transparent;
  static Color themeGrey = Color(0xfff5f5f5);
}

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
var discription =
    'Lorem ipsum dolor sit amet placerat, consectetur adipiscing elit in he surrounding text element of the product description text element of the product description text element of the product description text element of the product description text element of text element of the product description text element of the product description text element of the product description text element oftext element of the product description text element of the product description text element of the product description text element of ';
var specification =
    'Lorem ipsum dolor sit amet, consectetur adip occurence temp am  e justo in fac elementum in fac element   aliquet   in fac element aliquet in fac element aliquet in fac element aliquet in fac element aliqu   et aliquet in  fac element aliquet in fac element aliquet in fac element aliqu et al issuer in fac element aliquet in fac element aliquet in fac element aliqu';
var reviews =
    'Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)';






 var finalcartvalue;

List<dynamic> Productgrid = [
  
  {
    'title': 'Wireless Headphones',
    'image': 'assets/headphones/hp1.png',
    'price': 120.00,
    'color': [Colors.black, Colors.blue, Colors.orange, Color(0xff911e31)],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': 120.00,
    'color': [Colors.pink, Colors.purple, Color(0xffe87445), Color(0xff911e31)],
    'colorCount': '+1',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa3.png',
    'price': 680.00,
    'color': [Colors.yellow, Colors.red, Color(0xff911d30), Colors.grey],
    'colorCount': '+7',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': 70.00,
    'color': [
      Colors.blue,
      Colors.blueGrey,
      Color(0xff91471c),
      Color(0xff1d4491)
    ],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': 200.00,
    'color': [
      Colors.orange,
      Colors.purple,
      Color(0xff911e31),
      Color(0xff1d4491)
    ],
    'colorCount': '+3',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Man Snikers',
    'image': 'assets/shoes/shoes3.png',
    'price': 90.00,
    'color': [Colors.pink, Colors.deepPurple, Color(0xff90471e), Colors.grey],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Headphones',
    'image': 'assets/headphones2/hp4.png',
    'price': 120.00,
    'color': [Colors.black, Colors.blue, Color(0xff91471c), Colors.orange],
    'colorCount': '+4',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': 120.00,
    'color': [
      Colors.blue,
      Color(0xff91471c),
      Colors.blueGrey,
      Color(0xff1d4491)
    ],
    'colorCount': '+5',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa2.png',
    'price': 680.00,
    'color': [Colors.orange, Colors.grey, Color(0xff91471c), Color(0xff1d4491)],
    'colorCount': '+6',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes3.png',
    'price': 70.00,
    'color': [Colors.yellow, Color(0xff1d4491), Colors.red, Color(0xff911d30)],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': 200.00,
    'color': [Colors.pink, Color(0xff1d4491), Colors.purple, Color(0xffe87445)],
    'colorCount': '+6',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Kids Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': 90.00,
    'color': [Colors.black, Colors.blue, Color(0xff91471c), Colors.orange],
    'colorCount': '+9',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Headphones',
    'image': 'assets/headphones2/hp3.png',
    'price': 120.00,
    'color': [
      Colors.blue,
      Colors.blueGrey,
      Color(0xff91471c),
      Color(0xff1d4491)
    ],
    'colorCount': '+1',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Sweter',
    'image': 'assets/tshirt/womansweeter.png',
    'price': 120.00,
    'color': [
      Colors.pink,
      Colors.deepPurple,
      Color(0xff1d4491),
      Color(0xff90471e)
    ],
    'colorCount': '+3',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Primium Sofa',
    'image': 'assets/sofa/sofa4.png',
    'price': 680.00,
    'color': [Colors.yellow, Colors.red, Color(0xff91471c), Color(0xff911d30)],
    'colorCount': '+4',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Woman Snikers',
    'image': 'assets/shoes/shoes5.png',
    'price': 70.00,
    'color': [Colors.orange, Colors.purple, Color(0xff1d4491), Colors.grey],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Smart Watch',
    'image': 'assets/smartwatch/watch1.png',
    'price': 200.00,
    'color': [Colors.blue, Colors.blueGrey, Color(0xff1d4491), Colors.grey],
    'colorCount': '+7',
    'cartcount': 1,
    'likecount':false
  },
  {
    'title': 'Man Snikers',
    'image': 'assets/shoes/shoes2.png',
    'price': 90.00,
    'color': [Colors.pink, Color(0xff1d4491), Colors.purple, Color(0xffe87445)],
    'colorCount': '+2',
    'cartcount': 1,
    'likecount':false
  },



];
var likebtvalue = false;
List<dynamic> CartItem = [];
List<dynamic> LikeItem = [];
