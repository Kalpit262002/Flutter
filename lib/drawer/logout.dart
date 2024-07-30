import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glein/screens/sign_up_in.dart';
import 'package:glein/utils/utils1.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  final auth = FirebaseAuth.instance;
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
          "Logout",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Are you sure to Logout?',
              style: TextStyle(
                  fontFamily: "Mont_r",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 66, 66, 66)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  auth.signOut().then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUp())));
                  }).onError((error, stackTrace) {
                    Utils1().fluttertoast(error.toString());
                  });
                },
                child: Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Yes Logout',
                          style: TextStyle(
                              fontFamily: "Mont_b",
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
