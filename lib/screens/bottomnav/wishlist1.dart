import 'package:flutter/material.dart';

import 'package:glein/screens/bottomnav/bottomnav.dart';

import '../../bottomsheet/filter_wishlist.dart';
import '../../bottomsheet/sort.dart';
import '../../drawer/drawer.dart';
import '../notification.dart';

class WishlistScreen1 extends StatefulWidget {
  const WishlistScreen1({super.key});

  @override
  State<WishlistScreen1> createState() => _WishlistScreen1State();
}

class _WishlistScreen1State extends State<WishlistScreen1> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var arrSize = ['S', 'M', 'L', 'XL', '2XL', '3XL'];
    return Scaffold(
        drawer: const Drawer12(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(h * 0.098),
          child: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Padding(
                    padding: EdgeInsets.only(top: 16, left: 5),
                    child: Image(image: AssetImage('assets/images/menu.png')),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(top: h * 0.02615),
              child: Image.asset('assets/images/glein.png'),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: h * 0.02615,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.0835,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeNav(myIndex: 1)));
                        },
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: w * 0.0278),
                        child: SizedBox(
                          width: w * 0.0835,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const NotificationScreen())));
                              },
                              icon: const Icon(
                                Icons.notifications_none,
                                color: Colors.grey,
                              )),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: h * 0.034,
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: w * 0.668,
                    ),
                    child: Text(
                      'OFFER TEXT',
                      style: TextStyle(
                          fontFamily: 'Mont_b',
                          color: Colors.white,
                          fontSize: w * 0.03448),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.0183),
                child: Container(
                  height: h * 0.052,
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Color.fromARGB(25, 0, 0, 0)))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.195),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                elevation: 100,
                                enableDrag: true,
                                // isDismissible: false,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(w * 0.139),
                                        topRight: Radius.circular(w * 0.139))),
                                context: context,
                                builder: (context) {
                                  return SortFilter(h: h, w: w);
                                });
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.sort),
                              Text(
                                'Sort',
                                style: TextStyle(
                                    fontFamily: "Mont_s", fontSize: w * 0.0334),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: w * 0.00278,
                          height: h * 0.0418,
                          color: const Color.fromARGB(25, 0, 0, 0),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                constraints: BoxConstraints.tight(Size(
                                    MediaQuery.of(context).size.width,
                                    MediaQuery.of(context).size.height * .56)),
                                elevation: 100,
                                enableDrag: true,
                                // isDismissible: false,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(w * 0.139),
                                        topRight: Radius.circular(w * 0.139))),
                                context: context,
                                builder: (context) {
                                  return FilterWishlist(
                                      w: w, h: h, arrSize: arrSize);
                                });
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.filter_alt),
                              Text(
                                'Filter',
                                style: TextStyle(
                                    fontFamily: "Mont_s", fontSize: w * 0.0334),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.0362),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.57,
                      mainAxisSpacing: h * 0.018,
                      crossAxisSpacing: w * 0.025,
                      // mainAxisExtent: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      // height: h * 0.384,
                      // width: w * 0.462,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: w * 0.0835,
                              color: const Color.fromARGB(7, 0, 0, 0),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(w * 0.027)),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(children: [
                            Container(
                              height: h * 0.294,
                              width: w * 0.49,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 112, 112, 112)),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(w * 0.03),
                                      topRight: Radius.circular(w * 0.03)),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/NoPath3.png'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              top: h * 0.00130,
                              left: w * 0.0027,
                              child: index == 0
                                  ? Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(w * 0.025),
                                        ),
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                          child: Padding(
                                        padding: EdgeInsets.only(
                                            top: h * 0.00261,
                                            bottom: h * 0.00261,
                                            right: w * 0.0222,
                                            left: w * 0.0222),
                                        child: Text(
                                          "RECOMMENDED",
                                          style: TextStyle(
                                              fontFamily: "Mont_s",
                                              fontSize: w * 0.0167,
                                              color: Colors.white),
                                        ),
                                      )),
                                    )
                                  : Container(),
                            ),
                            Positioned(
                              top: h * 0.0215,
                              left: w * 0.005,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: EdgeInsets.all(w * 0.0222),
                                  child: Text('-40%',
                                      style: TextStyle(
                                          fontFamily: "Mont_b",
                                          fontSize: w * 0.0222,
                                          color: Colors.white)),
                                )),
                              ),
                            ),
                            Positioned(
                                top: h * 0.2615,
                                left: w * 0.38002,
                                child: Image.asset('assets/images/heart.png')),
                          ]),
                          Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.0039,
                              bottom: h * 0.00261,
                              right: w * 0.0724,
                            ),
                            child: Text(
                              'PRODUCT NAME',
                              style: TextStyle(
                                fontFamily: 'Mont_b',
                                fontSize: w * 0.0362,
                                color: const Color.fromARGB(255, 55, 71, 80),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: h * 0.00653,
                              right: w * 0.348,
                            ),
                            child: Text(
                              'COST',
                              style: TextStyle(
                                fontFamily: 'Mont_r',
                                fontSize: w * 0.0278,
                                color: const Color.fromARGB(255, 55, 71, 80),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: w * 0.064),
                            child: SizedBox(
                              width: w * 0.35,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: h * 0.018,
                                    width: w * 0.039,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.018,
                                    width: w * 0.039,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.018,
                                    width: w * 0.039,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.018,
                                    width: w * 0.039,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.018,
                                    width: w * 0.039,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Text(
                                    '+more',
                                    style: TextStyle(
                                      fontFamily: 'Mont_r',
                                      fontSize: w * 0.0278,
                                      color:
                                          const Color.fromARGB(255, 55, 71, 80),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: h * 0.0196,
              )
            ],
          ),
        ));
  }
}
