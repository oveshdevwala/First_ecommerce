import 'package:ecommerce/Database/database.dart';
import 'package:ecommerce/Screens/CartScreen.dart';
import 'package:ecommerce/Screens/ProductScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WishList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

FloatingActionButton centerFlotingActionbar() {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: Color(0xffff660e),
    child: Icon(CupertinoIcons.home),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic ontapNavigationIconColor = Colors.grey;
  var selectedNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                search_textfield(),
                SizedBox(height: 10),
                Slider(),
                catagory_list(),
                product_grid_title(),
                SizedBox(height: 10),
                product_grid()
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: centerFlotingActionbar(),
        bottomNavigationBar: bottomNavigationBar());
  }
}

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      notchMargin: 10,
      elevation: 10,
      padding: EdgeInsets.all(0),
      shape: CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ));
                },
                icon: Icon(
                  CupertinoIcons.rectangle_grid_2x2,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return WishListScreen();
                    },
                  ));
                },
                focusColor: Colors.black,
                selectedIcon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.black,
                ),
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 30),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CartScreen();
                    },
                  ));
                },

                // isSelected: true,
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class product_grid extends StatefulWidget {
  product_grid({
    super.key,
  });

  @override
  State<product_grid> createState() => _product_gridState();
}

var grididnex;

class _product_gridState extends State<product_grid> {
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
      itemCount: Productgrid.length,
      itemBuilder: (context, index) {
        grididnex = Productgrid[index];

        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ProductScreen(
                      cindex: index,
                      productprice: Productgrid[index]['price'],
                      productimage: Productgrid[index]['image'],
                      productname: Productgrid[index]['title'],
                    );
                  },
                  transitionDuration:
                      Duration(seconds: 1), // Set your desired duration
                ));
          },
          child: productContainer(
              homelikecount: Productgrid[index]['likecount'],
              //  grididnex,
              homecolor: Productgrid[index]['color'],
              cindex: index,
              // ontabdelet: () {
              //   LikeItem.removeWhere(
              //       (item) => item["title"] == Productgrid[index]['title']);
              //   setState(() {});
              // },
              homecolorcount: Productgrid[index]['colorCount'],
              homeimage: Productgrid[index]['image'],
              homeprice: Productgrid[index]['price'],
              hometitle: Productgrid[index]['title']),
        );
      },
    );
  }
}

class productContainer extends StatefulWidget {
  productContainer(
      // grididnex,
      {
    super.key,
    required this.cindex,
    required this.homecolor,
    required this.homecolorcount,
    required this.homelikecount,
    required this.homeprice,
    required this.hometitle,
    required this.homeimage,
    this.ontabdelet,
  });
  var homecolor;
  dynamic homecolorcount;
  bool homelikecount;
  int cindex;
  var homeprice;
  var hometitle;
  var homeimage;
  VoidCallback? ontabdelet;
  @override
  State<productContainer> createState() => _productContainerState();
}

class _productContainerState extends State<productContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 231, 231),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xffff660e),
                  ),
                  child: IconButton(
                    onPressed: () {
                      widget.homelikecount = !widget.homelikecount;

                      if (widget.homelikecount == true) {
                        LikeItem.add({
                          "color": widget.homecolor,
                          "price": widget.homeprice,
                          'image': widget.homeimage,
                          "title": widget.hometitle,
                          'colorCount': widget.homecolorcount,
                          "likecount": widget.homelikecount
                        });
                      } else if (widget.homelikecount == false) {
                        // LikeItem.removeAt(grididnex);
                        setState(() {
                          // widget.ontabdelet;
                          LikeItem.removeWhere(
                              (item) => item["title"] == widget.hometitle);
                        });
                      }

                      setState(() {});
                    },
                    icon: widget.homelikecount == true
                        ? Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.white,
                          )
                        : Icon(
                            CupertinoIcons.heart,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 140,
                      child: Hero(
                          tag: 'image${widget.cindex}',
                          child: Image.asset(widget.homeimage)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.hometitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${widget.homeprice}',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: CircleAvatar(
                            radius: 7, backgroundColor: widget.homecolor[0]),
                      ),
                      CircleAvatar(
                          radius: 7, backgroundColor: widget.homecolor[1]),
                      CircleAvatar(
                          radius: 7, backgroundColor: widget.homecolor[2]),
                      Container(
                        height: 16,
                        width: 16,
                        child: Center(
                          child: Text(
                            "${widget.homecolorcount}",
                            style: TextStyle(fontSize: 9),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Container productContainerc(
//   int index,
//   grididnex, {
//   required var homecolor,
//   required dynamic homecolorcount,
//   required var homeprice,
//   required String hometitle,
//   required String homeimage,
// }) {}

class catagory_list extends StatelessWidget {
  const catagory_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: CatagoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: (){
                  
                },
                child: Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: AssetImage(CatagoryList[index]['image']),
                          fit: BoxFit.cover)),
                ),
              ),
              Text(
                CatagoryList[index]['name'],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              )
            ],
          );
        },
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/slider.png'),
              fit: BoxFit.cover)),
    );
  }
}

class search_textfield extends StatelessWidget {
  const search_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          hintText: '  Search...',
          hintStyle: TextStyle(fontSize: 18),
          suffixIcon: Container(
            width: 60,
            child: Row(
              children: [
                Text(
                  '|',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: Colors.black,
                )
              ],
            ),
          ),
          filled: true,
          fillColor: Color.fromARGB(214, 238, 238, 238),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(6),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey.withOpacity(0.1),
        child: Image.asset(
          'assets/icons/menu_dots.png',
          height: 50,
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            )),
      ),
    ],
  );
}

Padding product_grid_title() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Special For You',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          'See all',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        )
      ],
    ),
  );
}
