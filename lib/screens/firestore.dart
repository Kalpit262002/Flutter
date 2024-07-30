import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:glein/utils/utils1.dart';
import 'list_firestore.dart';

class FireStore extends StatefulWidget {
  const FireStore({super.key});

  @override
  State<FireStore> createState() => _FireStoreState();
}

class _FireStoreState extends State<FireStore> {
  bool loading = false;
  final firestore = FirebaseFirestore.instance.collection("Profile");
  final mobilecontroller = TextEditingController();
  final namecontroller = TextEditingController();
  String gender = "";
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(h * 0.0784),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: h * 0.028),
              child: Text(
                'PROFILE',
                style: TextStyle(
                    fontFamily: 'Mont_s',
                    fontSize: w * 0.056,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const Text(
              "Via Firestore Database",
              style: TextStyle(fontFamily: "Mont_r", fontSize: 13),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Creating New One",
              style: TextStyle(fontFamily: "Mont_r", fontSize: 10),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: w * 0.73,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: w * 0.086,
                      backgroundImage:
                          const AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  CircleAvatar(
                    radius: w * 0.02507,
                    backgroundImage: const AssetImage('assets/images/sig.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.0557),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.01307),
                    child: TextFormField(
                      controller: namecontroller,
                      // maxLines: 1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: w * 0.02785, top: h * 0.019615),
                          hintText: 'Name*',
                          hintStyle: TextStyle(
                              fontFamily: 'Mont_m',
                              fontSize: w * 0.0334,
                              color: const Color.fromARGB(100, 36, 19, 50))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: h * 0.0196),
                    child: TextFormField(
                      controller: mobilecontroller,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: w * 0.02785, top: h * 0.019615),
                          hintText: 'Mobile No.*',
                          hintStyle: TextStyle(
                              fontFamily: 'Mont_m',
                              fontSize: w * 0.0334,
                              color: const Color.fromARGB(100, 36, 19, 50))),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: w * 0.02785, top: h * 0.019615),
                        hintText: 'E-Mail*',
                        hintStyle: TextStyle(
                            fontFamily: 'Mont_m',
                            fontSize: w * 0.0334,
                            color: const Color.fromARGB(100, 36, 19, 50))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: w * 0.4736,
                        height: h * 0.08107,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                        ))),
                        child: Padding(
                          padding: EdgeInsets.only(top: h * 0.045),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: w * 0.028,
                                ),
                                child: Text(
                                  'DOB: 01-01-2002',
                                  style: TextStyle(
                                      fontFamily: 'Mont_m',
                                      fontSize: w * 0.0334,
                                      color: const Color.fromARGB(
                                          100, 36, 19, 50)),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/cal.png',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.08107,
                        width: w * 0.3621,
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: Padding(
                          padding: EdgeInsets.only(top: h * 0.024),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: w * 0.028),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      gender = 'male';
                                      // print(isMale);
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.man,
                                        color: gender != 'male'
                                            ? const Color.fromARGB(
                                                100, 36, 19, 50)
                                            : const Color.fromARGB(
                                                255, 143, 105, 105),
                                      ),
                                      Text(
                                        'MALE',
                                        style: TextStyle(
                                            fontSize: w * 0.02785,
                                            color: const Color.fromARGB(
                                                100, 36, 19, 50)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    gender = 'female';
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: w * 0.02),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.woman,
                                        color: gender != 'female'
                                            ? const Color.fromARGB(
                                                100, 36, 19, 50)
                                            : const Color.fromARGB(
                                                255, 143, 105, 105),
                                      ),
                                      Text(
                                        'FEMALE',
                                        style: TextStyle(
                                            fontSize: w * 0.02785,
                                            color: const Color.fromARGB(
                                                100, 36, 19, 50)),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.0392),
              child: Column(
                children: [
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
                          onPressed: () {
                            setState(() {
                              loading = true;
                            });
                            String id = DateTime.now()
                                .microsecondsSinceEpoch
                                .toString();
                            firestore.doc(id).set({
                              'Name': namecontroller.text.toString(),
                              'id': id,
                              'Mobile no': mobilecontroller.text.toString(),
                            }).then((value) {
                              setState(() {
                                loading = false;
                              });
                              Utils1().fluttertoast("Registration Completed");
                            }).onError((error, stackTrace) {
                              setState(() {
                                loading = false;
                              });
                              Utils1().fluttertoast(error.toString());
                            });
                          },
                          child: loading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 3,
                                )
                              : Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.0390029,
                                      fontFamily: 'Mont_s'),
                                )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 5),
                    child: Text(
                      "For Editing your Profile",
                      style: TextStyle(fontFamily: "Mont_r", fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 27,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const ListFireStore())));
                      },
                      child: Text(
                        'Via Stream Builder(Click)',
                        style: TextStyle(
                            fontFamily: 'Mont_b',
                            fontSize: w * 0.03,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
