import 'package:flutter/material.dart';
import 'package:glein/screens/bottomnav/bottomnav.dart';
import 'package:glein/screens/notification.dart';
import 'package:glein/screens/product.dart';
import '../../drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List images = [
    "assets/images/family_photo.png",
    "assets/images/family_photo.png",
    "assets/images/family_photo.png",
    "assets/images/family_photo.png",
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

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
      backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(top: h * 0.0261, bottom: h * 0.0156),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ProductScreen())));
                },
                child: SizedBox(
                  width: double.infinity,
                  height: h * 0.243,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index % images.length;
                      });
                    },
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: double.infinity,
                        height: h * 0.243,
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: h * 0.026),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Categories',
                    style: TextStyle(
                        fontFamily: 'Mont_b',
                        fontSize: w * 0.0390,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(top: h * 0.00523),
                      child: Text(
                        'View More',
                        style: TextStyle(
                            fontFamily: 'Mont_b',
                            fontSize: w * 0.0278,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02615,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProductScreen())));
                          },
                          child: Image.asset('assets/images/Group 4505.png')),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProductScreen())));
                          },
                          child: Image.asset('assets/images/Group 4505.png')),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02615,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProductScreen())));
                          },
                          child: Image.asset('assets/images/Group 4505.png')),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProductScreen())));
                          },
                          child: Image.asset('assets/images/Group 4505.png')),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(
                        fontFamily: 'Mont_b',
                        fontSize: w * 0.0390,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.00523),
                    child: Text(
                      'Ends in 24:00:00',
                      style: TextStyle(
                          fontFamily: 'Mont_b',
                          fontSize: w * 0.0278,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.0156,
            ),
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: w * 0.055,
                        color: const Color.fromARGB(25, 69, 91, 99)),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: h * 0.015, bottom: h * 0.027),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: w * 1.755,
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: w * 0.0167),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/NoPath.png'),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.0057),
                                      child: Text(
                                        'PRODUCT NAME',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_b',
                                          fontSize: w * 0.0222,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: w * 0.00557),
                                      child: Text(
                                        'COST',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 55, 71, 80),
                                          fontFamily: 'Mont_r',
                                          fontSize: w * 0.0167,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.0026),
                                      child: SizedBox(
                                        width: w * 0.208,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.01046,
                                              width: w * 0.022,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        w * 0.2785),
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text(
                                              '+more',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 55, 71, 80),
                                                fontFamily: 'Mont_r',
                                                fontSize: w * 0.0167,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: h * 0.0209,
                left: w * 0.0473,
                child: Container(
                  height: h * 0.0431,
                  width: w * 0.0919,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Text('-40%',
                          style: TextStyle(
                              fontFamily: "Mont_b",
                              fontSize: w * 0.0222,
                              color: Colors.white))),
                ),
              ),
            ]),
            SizedBox(
              height: h * 0.026,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Brand',
                    style: TextStyle(
                        fontFamily: 'Mont_b',
                        fontSize: w * 0.0390,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(top: h * 0.00523),
                      child: Text(
                        'View More',
                        style: TextStyle(
                            fontFamily: 'Mont_b',
                            fontSize: w * 0.0278,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02615,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                              height: h * 0.202,
                              width: w * 0.4318,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: w * 0.0835,
                                      color: const Color.fromARGB(10, 0, 0, 0))
                                ],
                                color: Colors.white,
                              ),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/nike.png')))),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                              height: h * 0.202,
                              width: w * 0.4318,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: w * 0.0835,
                                      color: const Color.fromARGB(10, 0, 0, 0))
                                ],
                                color: Colors.white,
                              ),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/nike.png')))),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02615,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                              height: h * 0.202,
                              width: w * 0.4318,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: w * 0.0835,
                                      color: const Color.fromARGB(10, 0, 0, 0))
                                ],
                                color: Colors.white,
                              ),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/nike.png')))),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: w * 0.0835,
                                      color: const Color.fromARGB(10, 0, 0, 0))
                                ],
                                color: Colors.white,
                              ),
                              height: h * 0.202,
                              width: w * 0.4318,
                              child: Center(
                                  child:
                                      Image.asset('assets/images/nike.png')))),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.0117),
                        child: Text(
                          'Category Name',
                          style: TextStyle(
                              fontFamily: 'Mont_b',
                              fontSize: w * 0.0306,
                              color: const Color.fromARGB(255, 55, 71, 80)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: h * 0.03,
                bottom: h * 0.015,
                right: w * 0.445,
              ),
              child: Text(
                'Offers & Promotions',
                style: TextStyle(
                  fontFamily: 'Mont_b',
                  fontSize: w * 0.039,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: w * 0.0557,
                  color: const Color.fromARGB(25, 69, 91, 99),
                ),
              ]),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.0156),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: h * 0.143,
                        width: w * 0.2797,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 234, 234),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: w * 0.139,
                                color: const Color.fromARGB(7, 0, 0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(w * 0.0139),
                            border: Border.all(
                              color: const Color.fromARGB(255, 219, 226, 237),
                              width: w * 0.001,
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: h * 0.0183),
                              child: Image.asset('assets/images/App Icons.png'),
                            ),
                            Text(
                              '50% OFF',
                              style: TextStyle(
                                fontFamily: 'Mont_b',
                                fontSize: w * 0.0278,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: h * 0.003923),
                              child: Text(
                                'using ICICI credit card',
                                style: TextStyle(
                                  fontFamily: 'Mont_s',
                                  fontSize: w * 0.017,
                                  color: const Color.fromARGB(150, 36, 19, 50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: h * 0.143,
                        width: w * 0.2797,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 234, 234),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: w * 0.139,
                                color: const Color.fromARGB(7, 0, 0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(w * 0.0139),
                            border: Border.all(
                              color: const Color.fromARGB(255, 219, 226, 237),
                              width: w * 0.001,
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: h * 0.0183),
                              child: Image.asset('assets/images/App Icons.png'),
                            ),
                            Text(
                              '50% OFF',
                              style: TextStyle(
                                fontFamily: 'Mont_b',
                                fontSize: w * 0.0278,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: h * 0.003923),
                              child: Text(
                                'using CitiBank credit card',
                                style: TextStyle(
                                  fontFamily: 'Mont_s',
                                  fontSize: w * 0.017,
                                  color: const Color.fromARGB(150, 36, 19, 50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: h * 0.143,
                        width: w * 0.2797,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 234, 234),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: w * 0.139,
                                color: const Color.fromARGB(7, 0, 0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(w * 0.0139),
                            border: Border.all(
                              color: const Color.fromARGB(255, 219, 226, 237),
                              width: w * 0.001,
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: h * 0.0183),
                              child: Image.asset('assets/images/App Icons.png'),
                            ),
                            Text(
                              '27% OFF',
                              style: TextStyle(
                                fontFamily: 'Mont_b',
                                fontSize: w * 0.0278,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: h * 0.003923),
                              child: Text(
                                'using ICICI credit card',
                                style: TextStyle(
                                  fontFamily: 'Mont_s',
                                  fontSize: w * 0.017,
                                  color: const Color.fromARGB(150, 36, 19, 50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: h * 0.03,
                bottom: h * 0.015,
                right: w * 0.557,
              ),
              child: Text(
                'Recommended',
                style: TextStyle(
                  fontFamily: 'Mont_b',
                  fontSize: w * 0.039,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: w * 0.0557),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: h * 0.384,
                    width: w * 0.462,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        blurRadius: w * 0.0835,
                        color: const Color.fromARGB(7, 0, 0, 0),
                      ),
                    ]),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            height: h * 0.294,
                            width: w * 0.462,
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
                            top: h * 0.00915,
                            left: w * 0.01950,
                            child: Container(
                              height: h * 0.03269,
                              width: w * 0.06964,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: Text('-40%',
                                      style: TextStyle(
                                          fontFamily: "Mont_b",
                                          fontSize: w * 0.0222,
                                          color: Colors.white))),
                            ),
                          ),
                          Positioned(
                              top: h * 0.2615,
                              left: w * 0.39002,
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
                  Container(
                    height: h * 0.384,
                    width: w * 0.462,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        blurRadius: w * 0.0835,
                        color: const Color.fromARGB(7, 0, 0, 0),
                      ),
                    ]),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            height: h * 0.294,
                            width: w * 0.462,
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
                            top: h * 0.00915,
                            left: w * 0.01950,
                            child: Container(
                              height: h * 0.03269,
                              width: w * 0.06964,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: Text('-40%',
                                      style: TextStyle(
                                          fontFamily: "Mont_b",
                                          fontSize: w * 0.0222,
                                          color: Colors.white))),
                            ),
                          ),
                          Positioned(
                              top: h * 0.2615,
                              left: w * 0.39002,
                              child:
                                  Image.asset('assets/images/heart fill.png')),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.0111),
      child: Container(
        height: h * 0.0104,
        width: w * 0.0222,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
