import 'package:flutter/material.dart';

import '../bottomsheet/contact_us.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
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
          "Test Screen",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return Container(
                //         // height: 500,
                //         // width: 100,
                //         child: AlertDialog(
                //           // shape: ,
                //           title: const Text(
                //             'We have received your query our team will look into this issue and get back to you soon.',
                //             style: TextStyle(
                //                 fontFamily: "Mont_m",
                //                 fontSize: 13,
                //                 color: Color.fromARGB(255, 192, 192, 192)),
                //           ),
                //           actions: [
                //             Center(
                //               child: TextButton(
                //                   onPressed: () {},
                //                   child: const Text(
                //                     'Continue Shopping',
                //                     style: TextStyle(
                //                         fontFamily: "Mont_s",
                //                         fontSize: 11,
                //                         color:
                //                             Color.fromARGB(255, 124, 124, 124)),
                //                   )),
                //             )
                //           ],
                //         ),
                //       );
                //     });

                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    context: context,
                    builder: ((context) {
                      return const Contact_contactus();
                    }));
              },
              child: const Text('Click'))),
    );
  }
}
