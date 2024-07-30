import 'package:flutter/material.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        // centerTitle: true,
        titleSpacing: 0,
        title: const Text(
          "Apply Promotion",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: h * 0.0130),
              child: Material(
                elevation: h * 0.004,
                borderRadius: BorderRadius.circular(w * 0.0139),
                shadowColor: Colors.grey,
                child: Container(
                  height: h * 0.07,
                  width: w * 0.91,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.0139),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 180,
                          child: Padding(
                            padding: EdgeInsets.only(left: w * 0.0362),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Apply Promotion",
                                  hintStyle: TextStyle(
                                      fontSize: w * 0.0362,
                                      fontFamily: "Mont_m",
                                      color: const Color.fromARGB(
                                          200, 128, 127, 127))),
                            ),
                          )),
                      Container(
                        height: h * 0.07,
                        width: w * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.0139),
                          color: Colors.black,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "APPLY",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.0390029,
                                  fontFamily: 'Mont_s'),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: h * 0.03923),
              child: Container(
                width: double.infinity,
                height: h * 0.034,
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: w * 0.668,
                    ),
                    child: Text(
                      'Promotion',
                      style: TextStyle(
                          fontFamily: 'Mont_b',
                          color: Colors.white,
                          fontSize: w * 0.03448),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
