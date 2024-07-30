import 'package:flutter/material.dart';
import 'package:glein/screens/bottomnav/bottomnav.dart';

// ignore: camel_case_types
class Contact_contactus extends StatefulWidget {
  const Contact_contactus({
    super.key,
  });

  @override
  State<Contact_contactus> createState() => _Contact_contactusState();
}

// ignore: camel_case_types
class _Contact_contactusState extends State<Contact_contactus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              height: 3,
              width: 80,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Text(
              'We have received your query our team will look into this issue and get back to you soon.',
              style: TextStyle(
                  fontFamily: "Mont_m",
                  fontSize: 12,
                  color: Color.fromARGB(255, 192, 192, 192)),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => HomeNav(myIndex: 0))));
                },
                child: const Text(
                  'Continue Shopping',
                  style: TextStyle(
                      fontFamily: "Mont_s",
                      fontSize: 11,
                      color: Color.fromARGB(255, 124, 124, 124)),
                )),
          )
        ],
      ),
    );
  }
}
