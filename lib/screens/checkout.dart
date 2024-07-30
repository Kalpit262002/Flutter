import 'package:flutter/material.dart';
import 'package:glein/screens/coupon.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
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
          "Checkout",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: h * 0.01, bottom: h * 0.02, right: w * 0.4875),
                    child: Text(
                      'Shipping Address',
                      style:
                          TextStyle(fontFamily: "Mont_s", fontSize: w * 0.0390),
                    ),
                  ),
                  Material(
                    elevation: h * 0.004,
                    borderRadius: BorderRadius.circular(w * 0.0139),
                    shadowColor: Colors.grey,
                    child: Container(
                      height: h * 0.068,
                      width: w * 0.93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.0139),
                          border: Border.all(color: Colors.black)
                          // color: Colors.black,
                          ),
                      child: TextButton(
                          onPressed: () {
                            // _navigate1(context);
                          },
                          child: Text(
                            "Add A New Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: w * 0.0390029,
                                fontFamily: 'Mont_s'),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.026,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: h * 0.0130),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: h * 0.0130,
                          bottom: h * 0.00653,
                          right: w * 0.52096),
                      child: Text(
                        'Shipping Method',
                        style: TextStyle(
                            fontFamily: "Mont_s", fontSize: w * 0.039),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: w * 0.0975, bottom: h * 0.0130),
                      child: Text(
                        'Available after filling the Shipping Address.',
                        style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: w * 0.0334,
                            color: const Color.fromARGB(255, 177, 177, 177)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: h * 0.0130),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.0473),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: w * 0.52096,
                            top: h * 0.0130,
                            bottom: h * 0.017),
                        child: Text(
                          'Payment Option',
                          style: TextStyle(
                              fontFamily: "Mont_s", fontSize: w * 0.039),
                        ),
                      ),
                      CheckboxListTile(
                          checkboxShape: const CircleBorder(),
                          title: Row(
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/upi.png')),
                              Text(
                                'UPI',
                                style: TextStyle(
                                    fontFamily: "Hind_r",
                                    fontSize: w * 0.050,
                                    color: const Color.fromARGB(
                                        255, 132, 132, 132)),
                              )
                            ],
                          ),
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      const Divider(
                        color: Color.fromARGB(255, 177, 177, 177),
                      ),
                      CheckboxListTile(
                          checkboxShape: const CircleBorder(),
                          title: Row(
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/upi.png')),
                              Text(
                                'Paytm Wallet',
                                style: TextStyle(
                                    fontFamily: "Hind_r",
                                    fontSize: w * 0.050,
                                    color: const Color.fromARGB(
                                        255, 132, 132, 132)),
                              )
                            ],
                          ),
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      const Divider(
                        color: Color.fromARGB(255, 177, 177, 177),
                      ),
                      CheckboxListTile(
                          checkboxShape: const CircleBorder(),
                          title: Row(
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/upi.png')),
                              Text(
                                'Credit/Debit Card',
                                style: TextStyle(
                                    fontFamily: "Hind_r",
                                    fontSize: w * 0.050,
                                    color: const Color.fromARGB(
                                        255, 132, 132, 132)),
                              )
                            ],
                          ),
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      const Divider(
                        color: Color.fromARGB(255, 177, 177, 177),
                      ),
                      CheckboxListTile(
                          checkboxShape: const CircleBorder(),
                          title: Row(
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/upi.png')),
                              Text(
                                'Net Banking',
                                style: TextStyle(
                                    fontFamily: "Hind_r",
                                    fontSize: w * 0.050,
                                    color: const Color.fromARGB(
                                        255, 132, 132, 132)),
                              )
                            ],
                          ),
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      SizedBox(
                        height: h * 0.03,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Shipping Bag",
                      style:
                          TextStyle(fontFamily: "Mont_s", fontSize: w * 0.039),
                    ),
                    subtitle: Text(
                      '1 items in you bag',
                      style: TextStyle(
                          fontFamily: "Mont_m",
                          fontSize: w * 0.0334,
                          color: const Color.fromARGB(255, 177, 177, 177)),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.black,
                      size: w * 0.0835,
                    ),
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 177, 177, 177),
                  // ),
                  // Container(
                  //   color: Colors.amber,
                  //   height: 40,
                  //   child: ListTile(
                  //       minVerticalPadding: 20,
                  //       contentPadding: EdgeInsets.zero,
                  //       trailing: const Icon(Icons.holiday_village),
                  //       title: InkWell(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: ((context) =>
                  //                       const CouponScreen())));
                  //         },
                  //         child: Text(
                  //           '+ Coupon (click here)',
                  //           style: TextStyle(
                  //               fontFamily: "Mont_m",
                  //               fontSize: w * 0.02,
                  //               decoration: TextDecoration.underline),
                  //           // textAlign: TextAlign.end,
                  //         ),
                  //       )),
                  // ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 177, 177, 177),
                  // ),
                  Container(
                    width: w * 0.92,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Color.fromARGB(200, 128, 127, 127)),
                            bottom: BorderSide(
                                color: Color.fromARGB(200, 128, 127, 127)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const CouponScreen())));
                        },
                        child: const Text(
                          '+ Coupon (Click here)',
                          style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListTile(
                      title: Text(
                        'SubTotal',
                        style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: w * 0.03343,
                            color: const Color.fromARGB(255, 112, 111, 111)),
                      ),
                      trailing: Text(
                        '33.99',
                        style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: w * 0.03343,
                            color: const Color.fromARGB(255, 112, 111, 111)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListTile(
                      title: Text(
                        'Savings',
                        style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: w * 0.03343,
                            color: const Color.fromARGB(255, 112, 111, 111)),
                      ),
                      trailing: Text(
                        '0.00',
                        style: TextStyle(
                            fontFamily: "Mont_m",
                            fontSize: w * 0.03343,
                            color: const Color.fromARGB(255, 112, 111, 111)),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Shipping',
                      style: TextStyle(
                          fontFamily: "Mont_m",
                          fontSize: w * 0.03343,
                          color: const Color.fromARGB(255, 112, 111, 111)),
                    ),
                    trailing: Text(
                      '0.00',
                      style: TextStyle(
                          fontFamily: "Mont_m",
                          fontSize: w * 0.03343,
                          color: const Color.fromARGB(255, 112, 111, 111)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.0130),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Total",
                        style: TextStyle(
                            fontFamily: "Mont_s", fontSize: w * 0.039),
                      ),
                      trailing: Text(
                        "USD 33.99",
                        style: TextStyle(
                            fontFamily: "Mont_s", fontSize: w * 0.039),
                      ),
                    ),
                    Material(
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
                            onPressed: () {},
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.0390029,
                                  fontFamily: 'Mont_s'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
