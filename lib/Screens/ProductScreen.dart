import 'package:ecommerce/Database/database.dart';
// import 'package:ecommerce/Screens/CartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  ProductScreen(
      {super.key,
      required this.productimage,
      required this.productprice,
      required this.productname,
      required this.cindex});
  var cindex;
  var productname;
  var productprice;
  var productimage;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

var discription =
    'Lorem ipsum dolor sit amet placerat, consectetur adipiscing elit in he surrounding text element of the product description text element of the product description text element of the product description text element of the product description text element of the product description text element oftext element of the product description text element of the product description text element of the product description text element of ';
var specification =
    'Lorem ipsum dolor sit amet, consectetur adip occurence temp am  e justo in fac elementum in fac element   aliquet   in fac element aliquet in fac element aliquet in fac element aliquet in fac element aliqu   et aliquet in  fac element aliquet in fac element aliquet in fac element aliqu et al issuer in fac element aliquet in fac element aliquet in fac element aliqu';
var reviews =
    'Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)';
var cartItem = 1;
var detailebtvalue = 0;

class _ProductScreenState extends State<ProductScreen>
    with TickerProviderStateMixin {
  var buttonbgColors = Colors.transparent;
  var buttontextColors = Colors.black;
  // var cartItem = 1;
  // var detailebtvalue = 0;
  late TabController mdetailcontroller;
  @override
  void initState() {
    super.initState();
    mdetailcontroller = TabController(length: 3, vsync: this);
    mdetailcontroller.addListener(() {
      if (mdetailcontroller.index == 0) {
        detailebtvalue = 1;
      } else if (mdetailcontroller.index == 1) {
        detailebtvalue = 2;
      } else if (mdetailcontroller.index == 2) {
        detailebtvalue = 3;
      }
      setState(() {});
    });
  }

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
                Hero(
                  tag: 'image${widget.cindex}',
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // color: Color(0xfff5f5f5),
                        image: DecorationImage(
                            image: AssetImage(widget.productimage))),
                  ),
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
                        ColorsVarients(mindex: widget.cindex),
                        SizedBox(height: 10),
                        // detailsButtons(),
                        detailtab(),
                        SizedBox(height: 10),
                        detailtabbar(),
                        SizedBox(height: 10),
                        // detailText(),
                        SizedBox(height: 100),
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
                child: Hero(
                    tag: "cart${Productgrid[widget.cindex]['title']}",
                    child: flottingCartSection())),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container detailtabbar() {
    return Container(
      height: 300,
      width: double.infinity,
      child: TabBarView(controller: mdetailcontroller, children: [
        Text(
          discription,
          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: 15,
          ),
          textAlign: TextAlign.justify,
        ),
        Text(
          specification,
          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: 15,
          ),
          textAlign: TextAlign.justify,
        ),
        Text(
          reviews,
          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: 15,
          ),
          textAlign: TextAlign.justify,
        ),
      ]),
    );
  }

  DefaultTabController detailtab() {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: 40,
        // width: 300,
        child: TabBar(
            indicatorColor: uicolor.myorange,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black,
            dividerColor: Colors.black,
            onTap: (value) {
              detailebtvalue = value;
            },
            controller: mdetailcontroller,
            indicator: BoxDecoration(
                color: uicolor.myorange,
                borderRadius: BorderRadius.circular(20)),
            tabs: [
              Tab(text: 'Discription'),
              Tab(text: 'Specification'),
              Tab(text: 'Reviews')
            ]),
      ),
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
                      if (Productgrid[widget.cindex]['cartcount'] > 1) {
                        Productgrid[widget.cindex]['cartcount']--;
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
                  '${Productgrid[widget.cindex]['cartcount']}',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {
                      Productgrid[widget.cindex]['cartcount']++;
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
              onPressed: () {
                CartItem.add({
                  'cartcount': Productgrid[widget.cindex]['cartcount'],
                  'title': Productgrid[widget.cindex]['title'],
                  'price': Productgrid[widget.cindex]['price'],
                  'color': Productgrid[widget.cindex]['color'][0],
                  'image': Productgrid[widget.cindex]['image'],
                });
                

                setState(() {});
              },
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
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor:
                        detailebtvalue == 1 ? uicolor.myorange : uicolor.trans,
                    foregroundColor:
                        detailebtvalue == 1 ? Colors.white : Colors.black),
                onPressed: () {
                  detailebtvalue = 1;
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('Discription'),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // foregroundColor: Colors.black,
                    backgroundColor:
                        detailebtvalue == 2 ? uicolor.myorange : uicolor.trans,
                    foregroundColor:
                        detailebtvalue == 2 ? Colors.white : Colors.black),
                onPressed: () {
                  detailebtvalue = 2;
                  buttonbgColors = Color(0xffff660e);
                  buttontextColors = Colors.white;

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
                    backgroundColor:
                        detailebtvalue == 3 ? uicolor.myorange : uicolor.trans,
                    foregroundColor:
                        detailebtvalue == 3 ? Colors.white : Colors.black),
                onPressed: () {
                  detailebtvalue = 3;
                  buttontextColors = Colors.white;
                  buttonbgColors = Color(0xffff660e);
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

  Container ColorsVarients({required int mindex}) {
    return Container(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Productgrid[mindex]['color'][0],
          ),
          Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Productgrid[mindex]['color'][1],
              )),
          CircleAvatar(
            radius: 20,
            backgroundColor: Productgrid[mindex]['color'][2],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Productgrid[mindex]['color'][3],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.teal,
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
      detailebtvalue == 0
          ? discription
          : detailebtvalue == 1
              ? specification
              : reviews,
      style: TextStyle(
        color: Colors.grey,
        wordSpacing: 2,
        fontSize: 15,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
