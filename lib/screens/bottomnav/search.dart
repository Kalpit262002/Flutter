import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: const Drawer12(),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(h * 0.098),
      //   child: AppBar(
      //     leading: Builder(
      //       builder: (BuildContext context) {
      //         return IconButton(
      //           icon: const Padding(
      //             padding: EdgeInsets.only(top: 16, left: 5),
      //             child: Image(image: AssetImage('assets/images/menu.png')),
      //           ),
      //           onPressed: () {
      //             Scaffold.of(context).openDrawer();
      //           },
      //           // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //         );
      //       },
      //     ),
      //     automaticallyImplyLeading: false,
      //     elevation: 0,
      //     backgroundColor: Colors.white,
      //     title: Padding(
      //       padding: EdgeInsets.only(top: h * 0.02615),
      //       child: Image.asset('assets/images/glein.png'),
      //     ),
      //     centerTitle: true,
      //     actions: [
      //       Padding(
      //         padding: EdgeInsets.only(
      //           top: h * 0.02615,
      //         ),
      //         child: Row(
      //           children: [
      //             SizedBox(
      //               width: w * 0.0835,
      //               child: IconButton(
      //                 onPressed: () {
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => HomeNav(myIndex: 1)));
      //                 },
      //                 icon: const Icon(
      //                   Icons.search_outlined,
      //                   color: Colors.grey,
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //                 padding: EdgeInsets.only(right: w * 0.0278),
      //                 child: SizedBox(
      //                   width: w * 0.0835,
      //                   child: IconButton(
      //                       onPressed: () {
      //                         Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                                 builder: ((context) =>
      //                                     const NotificationScreen())));
      //                       },
      //                       icon: const Icon(
      //                         Icons.notifications_none,
      //                         color: Colors.grey,
      //                       )),
      //                 ))
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 37),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(200, 0, 0, 0),
                    blurRadius: w * 0.0167,
                  )
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 112, 112, 112),
                  width: w * 0.000278,
                ),
                color: Colors.white,
              ),
              width: double.infinity,
              height: h * 0.0588,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.0417),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    fontFamily: "Mont_b",
                                    fontSize: w * 0.0417,
                                    color: Colors.black),
                              ),
                            ),
                          )),
                      const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 117, 117, 117),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
