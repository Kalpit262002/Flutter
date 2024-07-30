import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: w * 0.139,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: w * 0.0529,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        // centerTitle: true,
        titleSpacing: 0,
        title: const Text(
          "NOTIFICATIONS",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Color.fromARGB(150, 194, 193, 193),
                          offset: Offset(0, 5))
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 15, left: 15, top: 12, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(180, 44, 28, 58),
                            radius: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Everyday English-French-Spanish: ",
                                style: TextStyle(
                                    fontFamily: "Mont_m", fontSize: 11),
                              ),
                              Text(
                                "Conversation and Fun - Joe!",
                                style: TextStyle(
                                    fontFamily: "Mont_m", fontSize: 11),
                              ),
                              Text(
                                "9 hrs",
                                style: TextStyle(
                                    fontFamily: "Mont_m",
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 153, 143, 162)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Container(
                                height: 40,
                                width: 49,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 3,
                                        color:
                                            Color.fromARGB(120, 196, 196, 196),
                                        offset: Offset(0, 4))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ),
      ),
    );
  }
}
