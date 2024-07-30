import 'package:flutter/material.dart';
import 'package:glein/drawer/logout.dart';
import 'package:glein/screens/bottomnav/bottomnav.dart';
import 'contact_us.dart';

class Drawer12 extends StatefulWidget {
  const Drawer12({super.key});

  @override
  State<Drawer12> createState() => _Drawer12State();
}

class _Drawer12State extends State<Drawer12> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> arrTitle = [
      {
        'icon': Icons.share_outlined,
        'title': 'Contact US',
        'class': const TestScreen(),
      },
      {
        'icon': Icons.help,
        'title': 'Help & Support',
        'class': const TestScreen()
      },
      {
        'icon': Icons.account_box_outlined,
        'title': 'About Us',
        'class': const TestScreen()
      },
      {
        'icon': Icons.file_copy_outlined,
        'title': 'Terms & Conditions',
        'class': const TestScreen()
      },
      {
        'icon': Icons.privacy_tip,
        'title': 'Privacy Policy',
        'class': const TestScreen()
      },
      {
        'icon': Icons.question_answer,
        'title': 'FAQ',
        'class': const TestScreen()
      },
      {'icon': Icons.logout, 'title': 'Log Out', 'class': const Logout()},
    ];
    return SizedBox(
      width: double.infinity,
      child: Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.only(top: 38, bottom: 10, right: 315),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Image(
                        image: AssetImage('assets/images/menu.png')),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Orders',
                      style: TextStyle(
                          fontFamily: "Mont_b",
                          fontSize: 14,
                          color: Color.fromARGB(255, 36, 19, 50)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomeNav(myIndex: 3))));
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                            fontFamily: "Mont_b",
                            fontSize: 11,
                            color: Color.fromARGB(255, 36, 19, 50)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.black),

                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(20, 0, 0, 0),
                          offset: Offset(0, 4))
                    ],
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(60)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: SizedBox(
                          height: 160,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 95,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 112, 112, 112)),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/shopping bag.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'PRODU....',
                                          style: TextStyle(
                                              fontFamily: "Mont_b",
                                              fontSize: 13,
                                              color: Color.fromARGB(
                                                  255, 69, 87, 97)),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 30),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Hi,',
                                style: TextStyle(
                                    fontFamily: "Mont_r",
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 36, 19, 50)),
                              ),
                            ),
                            const Text(
                              ' Ankit',
                              style: TextStyle(
                                  fontFamily: "Mont_b",
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 36, 19, 50)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              HomeNav(myIndex: 4))));
                                },
                                child: const CircleAvatar(
                                  radius: 11,
                                  child: Icon(
                                    Icons.mode_edit_outlined,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 125),
                              child: Text(
                                'Addresses',
                                style: TextStyle(
                                    fontFamily: "Mont_b",
                                    fontSize: 13,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 580,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: arrTitle.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      arrTitle[index]['class']));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.black),

                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Color.fromARGB(20, 0, 0, 0),
                                    offset: Offset(0, 4))
                              ],
                            ),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 11, bottom: 11, left: 15),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      arrTitle[index]['icon'],
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      arrTitle[index]['title'],
                                      style: const TextStyle(
                                          fontFamily: "Mont_b",
                                          fontSize: 13,
                                          color:
                                              Color.fromARGB(255, 36, 19, 50)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
