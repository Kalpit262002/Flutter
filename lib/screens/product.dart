import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/family_photo.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text(
              "Product",
              style: TextStyle(fontFamily: "Mont_b", fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Text(
              "Description",
              style: TextStyle(fontFamily: "Mont_b", fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Text(
              "Screen",
              style: TextStyle(fontFamily: "Mont_b", fontSize: 30),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Go back",
                style: TextStyle(
                    fontFamily: "Mont_r",
                    fontSize: 15,
                    color: Color.fromARGB(255, 97, 97, 97)),
              ))
        ],
      ),
    );
  }
}
