import 'package:flutter/material.dart';
import 'package:glein/screens/bottomnav/bottomnav.dart';
import 'package:glein/screens/checkout.dart';
import 'package:glein/screens/coupon.dart';

import '../../drawer/drawer.dart';
import '../notification.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
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
          Container(
            height: h * 0.215,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: w * 0.083,
                    color: const Color.fromARGB(25, 69, 91, 99)),
              ],
              color: Colors.white,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.041),
                  child: Container(
                    height: h * 0.176,
                    width: w * 0.2758,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.0139),
                        color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/Group 4505.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.0326, left: w * 0.0278),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: h * 0.0143),
                        child: Text(
                          "Mindful solids Deep Onys Plung...",
                          style: TextStyle(
                              fontFamily: "Mont_m", fontSize: w * 0.03),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: w * 0.362),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromARGB(255, 237, 237, 237),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: w * 0.0111),
                                child: Text(
                                  'Black/M',
                                  style: TextStyle(
                                      fontFamily: "Mont_m", fontSize: w * 0.03),
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                      Icons.keyboard_arrow_down_outlined))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.585,
                        child: Padding(
                          padding: EdgeInsets.only(top: h * 0.0392),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$33.99",
                                style: TextStyle(
                                    fontFamily: "Mont_b", fontSize: w * 0.047),
                              ),
                              Container(
                                height: h * 0.03661,
                                width: w * 0.225,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 177, 177, 177)),
                                    borderRadius:
                                        BorderRadius.circular(w * 0.00835)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(bottom: h * 0.0156),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.minimize_rounded,
                                          color: const Color.fromARGB(
                                              255, 177, 177, 177),
                                          size: w * 0.048,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 177, 177, 177),
                                      height: h * 0.03661,
                                      width: w * 0.00278,
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 177, 177, 177),
                                          fontSize: w * 0.03343,
                                          fontFamily: "Mont_s"),
                                    ),
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 177, 177, 177),
                                      height: h * 0.03661,
                                      width: w * 0.00278,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.add,
                                        color: const Color.fromARGB(
                                            255, 177, 177, 177),
                                        size: w * 0.048,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: h * 0.01, bottom: h * 0.01, right: w * 0.5014),
            child: Text(
              'You May Also Like',
              style: TextStyle(fontFamily: "Mont_b", fontSize: w * 0.039),
            ),
          ),

          SizedBox(
            height: h * .37,
            child: ListView.builder(
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                  child: Container(
                    height: h * 0.384,
                    width: w * 0.462,
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
                          // Positioned(
                          //   top: h * 0.00130,
                          //   left: w * 0.0027,
                          //   child: index == 0
                          //       ? Container(
                          //           decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.only(
                          //               topLeft: Radius.circular(w * 0.025),
                          //             ),
                          //             color: Colors.black,
                          //           ),
                          //           child: Center(
                          //               child: Padding(
                          //             padding: EdgeInsets.only(
                          //                 top: h * 0.00261,
                          //                 bottom: h * 0.00261,
                          //                 right: w * 0.0222,
                          //                 left: w * 0.0222),
                          //             child: Text(
                          //               "RECOMMENDED",
                          //               style: TextStyle(
                          //                   fontFamily: "Mont_s",
                          //                   fontSize: w * 0.0167,
                          //                   color: Colors.white),
                          //             ),
                          //           )),
                          //         )
                          //       : Container(),
                          // ),

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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ),
                );
              },
              itemCount: 4,
              scrollDirection: Axis.horizontal,
            ),
          ),

          // Container(
          //   // height: h * 0.384,
          //   // width: w * 0.462,
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           blurRadius: w * 0.0835,
          //           color: const Color.fromARGB(7, 0, 0, 0),
          //         ),
          //       ],
          //       borderRadius: BorderRadius.circular(w * 0.027)),
          //   child: Column(
          //     // mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Stack(children: [
          //         Container(
          //           height: h * 0.294,
          //           width: w * 0.49,
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               border: Border.all(
          //                   color: const Color.fromARGB(255, 112, 112, 112)),
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(w * 0.03),
          //                   topRight: Radius.circular(w * 0.03)),
          //               image: const DecorationImage(
          //                 image: AssetImage('assets/images/NoPath3.png'),
          //                 fit: BoxFit.cover,
          //               )),
          //         ),
          //         // Positioned(
          //         //   top: h * 0.00130,
          //         //   left: w * 0.0027,
          //         //   child: index == 0
          //         //       ? Container(
          //         //           decoration: BoxDecoration(
          //         //             borderRadius: BorderRadius.only(
          //         //               topLeft: Radius.circular(w * 0.025),
          //         //             ),
          //         //             color: Colors.black,
          //         //           ),
          //         //           child: Center(
          //         //               child: Padding(
          //         //             padding: EdgeInsets.only(
          //         //                 top: h * 0.00261,
          //         //                 bottom: h * 0.00261,
          //         //                 right: w * 0.0222,
          //         //                 left: w * 0.0222),
          //         //             child: Text(
          //         //               "RECOMMENDED",
          //         //               style: TextStyle(
          //         //                   fontFamily: "Mont_s",
          //         //                   fontSize: w * 0.0167,
          //         //                   color: Colors.white),
          //         //             ),
          //         //           )),
          //         //         )
          //         //       : Container(),
          //         // ),

          //         Positioned(
          //           top: h * 0.0215,
          //           left: w * 0.005,
          //           child: Container(
          //             decoration: const BoxDecoration(
          //               color: Colors.red,
          //               shape: BoxShape.circle,
          //             ),
          //             child: Center(
          //                 child: Padding(
          //               padding: EdgeInsets.all(w * 0.0222),
          //               child: Text('-40%',
          //                   style: TextStyle(
          //                       fontFamily: "Mont_b",
          //                       fontSize: w * 0.0222,
          //                       color: Colors.white)),
          //             )),
          //           ),
          //         ),
          //         Positioned(
          //             top: h * 0.2615,
          //             left: w * 0.38002,
          //             child: Image.asset('assets/images/heart.png')),
          //       ]),
          //       Padding(
          //         padding: EdgeInsets.only(
          //           top: h * 0.0039,
          //           bottom: h * 0.00261,
          //           right: w * 0.0724,
          //         ),
          //         child: Text(
          //           'PRODUCT NAME',
          //           style: TextStyle(
          //             fontFamily: 'Mont_b',
          //             fontSize: w * 0.0362,
          //             color: const Color.fromARGB(255, 55, 71, 80),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(
          //           bottom: h * 0.00653,
          //           right: w * 0.348,
          //         ),
          //         child: Text(
          //           'COST',
          //           style: TextStyle(
          //             fontFamily: 'Mont_r',
          //             fontSize: w * 0.0278,
          //             color: const Color.fromARGB(255, 55, 71, 80),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(right: w * 0.064),
          //         child: SizedBox(
          //           width: w * 0.35,
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               Container(
          //                 height: h * 0.018,
          //                 width: w * 0.039,
          //                 decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(100),
          //                 ),
          //               ),
          //               Container(
          //                 height: h * 0.018,
          //                 width: w * 0.039,
          //                 decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(100),
          //                 ),
          //               ),
          //               Container(
          //                 height: h * 0.018,
          //                 width: w * 0.039,
          //                 decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(100),
          //                 ),
          //               ),
          //               Container(
          //                 height: h * 0.018,
          //                 width: w * 0.039,
          //                 decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(100),
          //                 ),
          //               ),
          //               Container(
          //                 height: h * 0.018,
          //                 width: w * 0.039,
          //                 decoration: BoxDecoration(
          //                   color: Colors.red,
          //                   borderRadius: BorderRadius.circular(100),
          //                 ),
          //               ),
          //               Text(
          //                 '+more',
          //                 style: TextStyle(
          //                   fontFamily: 'Mont_r',
          //                   fontSize: w * 0.0278,
          //                   color: const Color.fromARGB(255, 55, 71, 80),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(
                top: h * 0.03, bottom: h * 0.02, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const CouponScreen())));
                  },
                  child: Text(
                    '+ Coupon available',
                    style: TextStyle(
                        fontFamily: "Mont_s",
                        fontSize: w * 0.0417,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Text(
                  'Total 33.99',
                  style: TextStyle(
                    fontFamily: "Mont_s",
                    fontSize: w * 0.0417,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: h * 0.06,
            width: w * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w * 0.0139),
              color: Colors.black,
            ),
            child: TextButton(
                onPressed: () {
                  // _navigate1(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const CheckOutScreen())));
                },
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: w * 0.0390029,
                      fontFamily: 'Mont_s'),
                )),
          ),
        ],
      )),
    );
  }
}
