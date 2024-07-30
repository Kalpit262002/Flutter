import 'package:flutter/material.dart';
import 'package:glein/screens/sign_up_in.dart';

class UnderProgress extends StatefulWidget {
  const UnderProgress({super.key});

  @override
  State<UnderProgress> createState() => _UnderProgressState();
}

class _UnderProgressState extends State<UnderProgress> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: w * 0.139,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const SignUp())));
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
          "Under Construction",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image(
                  image: AssetImage('assets/images/under construction.jpg')),
            )
          ],
        ),
      ),
    );
  }
}
