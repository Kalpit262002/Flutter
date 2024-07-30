import 'package:flutter/material.dart';
import 'package:glein/screens/bottomnav/bottomnav.dart';
import 'package:glein/screens/profile.dart';

class SucessSignIn extends StatefulWidget {
  const SucessSignIn({super.key});

  @override
  State<SucessSignIn> createState() => _SucessSignInState();
}

class _SucessSignInState extends State<SucessSignIn> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            // color: Colors.white,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/glitter1.png"),
                        fit: BoxFit.cover),
                  ),
                  height: h * 0.392,
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.0915, bottom: h * 0.0156),
                  child: Text(
                    "Congratulations",
                    style:
                        TextStyle(fontFamily: 'Mont_b', fontSize: w * 0.0417),
                  ),
                ),
                Text(
                  'You have successfully signed in',
                  style: TextStyle(fontFamily: 'Mont_r', fontSize: w * 0.0362),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.0523),
                  child: Material(
                    elevation: h * 0.004,
                    borderRadius: BorderRadius.circular(w * 0.0139),
                    shadowColor: Colors.grey,
                    child: Container(
                      height: h * 0.068,
                      width: w * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.0139),
                        color: Colors.black,
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Profile())));
                          },
                          child: Text(
                            "COMPLETE PROFILE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.0390029,
                                fontFamily: 'Mont_s'),
                          )),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeNav(myIndex: 0))));
                  },
                  child: Text(
                    'Skip>>>',
                    style: TextStyle(
                        fontFamily: 'Mont_r',
                        fontSize: w * 0.0362,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
