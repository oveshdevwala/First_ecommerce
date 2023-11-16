import 'package:ecommerce/Database/database.dart';
// import 'package:ecommerce/Screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  CartScreen({
    super.key,
  });
  // int ccindex;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

var cartvalue;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uicolor.themeGrey,
      appBar: cartappbar(context),
      body: Column(
        children: [
          // SizedBox(height: 10),
          Container(
            height: 470,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: cartList(),
            ),
          ),
          Expanded(child: checkoutSection())
        ],
      ),
    );
  }

  ListView cartList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: CartItem.length,
        itemBuilder: (context, index) {
          cartvalue = CartItem[index]['price'];
          return Container(
            height: 130,
            padding: EdgeInsets.all(15),
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: uicolor.themeGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(CartItem[index]['image']),
                    ),
                    SizedBox(width: 15),
                    Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            CartItem[index]['title'],
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Gadgets Marketplace',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Text(
                            // "\$${CartItem[index]['price']}",
                            "\$${cartvalue}",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 1,
                  // alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.delete_simple,
                        color: uicolor.myorange,
                        size: 25,
                      )),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  height: 35,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: uicolor.themeGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (CartItem[index]['cartcount'] > 1) {
                              CartItem[index]['cartcount']--;
                              cartvalue = CartItem[index]['price'] *
                                  CartItem[index]['cartcount'];

                              CartItem[index]['price'] = cartvalue;

                              setState(() {});
                            }
                          },
                          icon: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                        Text(
                          '${CartItem[index]['cartcount']}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            CartItem[index]['cartcount']++;
                            // Productgrid[index]['price']++;
                            cartvalue = CartItem[index]['price'] *
                                CartItem[index]['cartcount'];
                            CartItem[index]['price'] = cartvalue;
                            for (int i = 0; i < CartItem.length; i++) {
                              finalcartvalue = ++CartItem[i]['price'];
                            }
                            setState(() {});
                          },
                          icon: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

AppBar cartappbar(BuildContext context) {
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
        child: Text(
      'My Cart',
      style: TextStyle(
        fontSize: 25,
      ),
    )),
  );
}

class checkoutSection extends StatelessWidget {
  const checkoutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Stack(
        children: [
          Column(children: [
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: uicolor.themeGrey,
                    filled: true,
                    hintText: 'Enter Discount Code',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    // suffixStyle: TextField.materialMisspelledTextStyle,
                    suffixIcon: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Apply',
                        style: TextStyle(color: uicolor.myorange, fontSize: 20),
                      ),
                    )),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SubTotal",
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
                Text(
                  '\$245.00  ',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(
                color: Colors.grey.withOpacity(0.6), height: 1, thickness: 0.5),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  '\$245.00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: uicolor.myorange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Checkout',
                      style: TextStyle(fontSize: 25),
                    ))),
          )
        ],
      ),
    );
  }
}
