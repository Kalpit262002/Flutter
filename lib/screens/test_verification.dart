import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glein/screens/sign_up_in.dart';

class TestVerification extends StatefulWidget {
  const TestVerification({super.key});

  @override
  State<TestVerification> createState() => _TestVerificationState();
}

class _TestVerificationState extends State<TestVerification> {
  final _formfeild = GlobalKey<FormState>();
  final codecontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
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
            "Verification Code",
            style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: h * 0.0915),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: w * 0.14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: w * 0.091,
                        child: Form(
                          key: _formfeild,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: codecontroller,
                            decoration: const InputDecoration(
                              hintText: 'Enter 6 digit code',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Code";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                          ),
                        )),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            keyboardType: TextInputType.number)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.0496, bottom: h * 0.0496),
              child: Text(
                "Resend code",
                style: TextStyle(fontFamily: 'Mont_b', fontSize: w * 0.0362),
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
                    onPressed: () async {
                      // setState(() {
                      //   loading = true;
                      // });
                      // if (_formfeild.currentState!.validate()) {
                      //   final credential = PhoneAuthProvider.credential(
                      //       verificationId: widget.verificationId,
                      //       smsCode: codecontroller.text.toString());
                      //   try {
                      //     await auth.signInWithCredential(credential);
                      //     setState(() {
                      //       loading = false;
                      //     });

                      //     // ignore: use_build_context_synchronously
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: ((context) =>
                      //                 const SucessSignIn())));
                      //     Utils1().fluttertoast('Welcome to Glein');
                      //   } catch (error) {
                      //     setState(() {
                      //       loading = false;
                      //     });
                      //     Utils1().fluttertoast(
                      //         error.toString().split("]").last.toString());
                      //   }
                      // }
                    },
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.0390029,
                          fontFamily: 'Mont_s'),
                    )),
              ),
            ),
          ],
        ));
  }
}
