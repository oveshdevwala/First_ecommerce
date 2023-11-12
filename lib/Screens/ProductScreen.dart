// ignore_for_file: must_be_immutable

import 'package:ecommerce/Database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({
    super.key,
    required this.productimage,
    required this.productprice,
    required this.productname,
  });
  var productname;
  var productprice;
  var productimage;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

var discription =
    'Lorem ipsum dolor sit amet placerat, consectetur adipiscing elit in he surrounding text element of the product description text element of the product description text element of the product description text element of the product description text element of text element of the product description text element of the product description text element of the product description text element oftext element of the product description text element of the product description text element of the product description text element of ';
var specification =
    'Lorem ipsum dolor sit amet, consectetur adip occurence temp am  e justo in fac elementum in fac element   aliquet   in fac element aliquet in fac element aliquet in fac element aliquet in fac element aliqu   et aliquet in  fac element aliquet in fac element aliquet in fac element aliqu et al issuer in fac element aliquet in fac element aliquet in fac element aliqu';
var reviews =
    'Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)';

class _ProductScreenState extends State<ProductScreen> {
  var buttonbgColors = Colors.white.withOpacity(0);
  var buttontextColors = Colors.black;
  var cartItem = 1;
  var detailebtvalue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: Color(0xfff5f5f5),
      appBar: productacreenAppbar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      image: DecorationImage(
                          image: AssetImage(widget.productimage))),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // height: 400,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        productTitle(),
                        SizedBox(height: 5),
                        productPrice(),
                        reviewRow(),
                        ColorTitle(),
                        SizedBox(height: 10),
                        ColorsVarients(),
                        SizedBox(height: 10),
                        detailsButtons(),
                        SizedBox(height: 10),
                        detailText(),
                        SizedBox(height: 300),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: flottingCartSection()),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container flottingCartSection() {
    return Container(
      width: 350,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            // width: 110,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (cartItem > 1) {
                        cartItem--;
                        setState(() {});
                      }
                    },
                    icon: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ))),
                Text(
                  '$cartItem',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {
                      cartItem++;
                      setState(() {});
                    },
                    icon: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  backgroundColor: Color(0xfffe5f0b)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18),
                ),
              )),
        ],
      ),
    );
  }

  Container detailsButtons() {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: buttonbgColors,
                    foregroundColor: buttontextColors),
                onPressed: () {
                  buttonbgColors = Color(0xffff660e);
                  buttontextColors = Colors.white;
                  setState(() {
                    detailebtvalue = 1;
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('Discription'),
                )),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  detailebtvalue = 2;
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('Specification'),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // backgroundColor: Color(0xffff660e),
                    foregroundColor: Colors.black),
                onPressed: () {
                  detailebtvalue = 3;
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('Review'),
                )),
          ],
        )
      ],
    ));
  }

  Text ColorTitle() {
    return Text(
      'Color',
      style: TextStyle(
          fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  Container ColorsVarients() {
    return Container(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff911e31),
          ),
          Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
              )),
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff1d4491),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff91471c),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Text productPrice() {
    return Text(
      '\$${widget.productprice}',
      style: TextStyle(
          fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Text productTitle() {
    return Text(
      widget.productname,
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Container reviewRow() {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text(
              'Seller: Tariqul isalm',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 10,
            child: Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfffe5f0b),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.white,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '(320 Review)',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar productacreenAppbar() {
    return AppBar(
      backgroundColor: Color(0xfff5f5f5),
      elevation: 0,
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
      actions: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.share_outlined,
            color: Colors.black,
            size: 17,
          ),
        ),
        SizedBox(width: 20),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(
            CupertinoIcons.heart,
            color: Colors.black,
            size: 17,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

class detailText extends StatelessWidget {
  const detailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      detailebtvalue == 1
          ? discription
          : detailebtvalue == 2
              ? specification
              : detailebtvalue == 3
                  ? reviews
                  : discription,
      style: TextStyle(
        color: Colors.grey,
        wordSpacing: 2,
        fontSize: 15,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
