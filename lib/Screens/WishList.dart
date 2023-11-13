import 'package:ecommerce/Database/database.dart';
import 'package:ecommerce/Screens/HomeScreen.dart';
import 'package:ecommerce/Screens/ProductScreen.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Screens/CartScreen.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: centerFlotingActionbar(),
      bottomNavigationBar: bottomNavigationBar(),
      appBar: wishlistappbar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Product You Liked',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              // product_grid_title(),
              SizedBox(height: 10),
              product_grid_wish()
            ],
          ),
        ),
      ),
    );
  }

  AppBar wishlistappbar() {
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
        ),
      ),
      title: Center(
          child: Text(
        'WishLIst',
        style: TextStyle(
          fontSize: 25,
        ),
      )),
    );
  }
}

class product_grid_wish extends StatelessWidget {
  product_grid_wish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.82,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20),
      itemCount: LikeItem.length,
      itemBuilder: (context, index) {
        // var grididnex = Productgrid[index]['color'];

        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ProductScreen(
                      cindex: index,
                      productprice: LikeItem[index]['price'],
                      productimage: LikeItem[index]['image'],
                      productname: LikeItem[index]['title'],
                    );
                  },
                  transitionDuration:
                      Duration(seconds: 1), // Set your desired duration
                ));
          },
          child: LikeItem[index]['image'] != null
              ? productContainer(
                  cindex: index,
                  homelikecount: LikeItem[index]['likecount'],
                  //  grididnex,
                  // ontabdelet: () {
                  //   LikeItem.removeWhere(
                  //       (item) => item["title"] == LikeItem[index]['title']);
                  // },
                  homecolor: LikeItem[index]['color'],
                  homecolorcount: LikeItem[index]['colorCount'],
                  homeimage: LikeItem[index]['image'],
                  homeprice: LikeItem[index]['price'],
                  hometitle: LikeItem[index]['title'])
              : Container(),
        );
      },
    );
  }
}
