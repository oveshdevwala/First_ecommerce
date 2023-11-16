// import 'package:flutter/cupertino.dart';
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ecommerce/Database/database.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key, required this.title, required this.cindex});
  var title;
  var cindex;
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uicolor.themeGrey,
      appBar: categoryAppbar(context),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  AppBar categoryAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: uicolor.themeGrey,
      elevation: 0,
      // leadingWidth: 0,
      foregroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 17,
            ),
          ),
        ),
      ),
      title: Center(
          child: Hero(
        tag: 'title${widget.cindex}',
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      )),
    );
  }
}
