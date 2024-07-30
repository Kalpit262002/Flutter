import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:glein/screens/sign_up_in.dart';
import 'package:glein/screens/success_sign.dart';
import 'package:glein/utils/utils1.dart';

class Verification extends StatefulWidget {
  final String verificationId;
  const Verification({Key? key, required this.verificationId})
      : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String smscode = '';
  // final _formfeild = GlobalKey<FormState>();
  final codecontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  List otpcontrollers = List.generate(6, (index) => TextEditingController());
  bool loading = false;
  void submit() {
    if (otpcontrollers.isEmpty) {
      Utils1().fluttertoast("Enter Verification Code");
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          controller: otpcontrollers[0],
                          decoration: const InputDecoration(
                            hintText: '*',
                            helperStyle: TextStyle(
                                color: Color.fromARGB(255, 197, 197, 197),
                                fontSize: 17),
                          ),
                          keyboardType: TextInputType.number,
                        )),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            controller: otpcontrollers[1],
                            decoration: const InputDecoration(
                              hintText: '*',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            controller: otpcontrollers[2],
                            decoration: const InputDecoration(
                              hintText: '*',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            controller: otpcontrollers[3],
                            decoration: const InputDecoration(
                              hintText: '*',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            controller: otpcontrollers[4],
                            decoration: const InputDecoration(
                              hintText: '*',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number)),
                    SizedBox(
                        width: w * 0.091,
                        child: TextFormField(
                            controller: otpcontrollers[5],
                            decoration: const InputDecoration(
                              hintText: '*',
                              helperStyle: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 17),
                            ),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.length != 1) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.0496, bottom: h * 0.0496),
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "Resend code",
                  style: TextStyle(fontFamily: 'Mont_b', fontSize: w * 0.0362),
                ),
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
                      submit();
                      setState(() {
                        loading = true;
                      });

                      smscode = otpcontrollers[0].text.toString() +
                          otpcontrollers[1].text.toString() +
                          otpcontrollers[2].text.toString() +
                          otpcontrollers[3].text.toString() +
                          otpcontrollers[4].text.toString() +
                          otpcontrollers[5].text.toString();

                      final credential = PhoneAuthProvider.credential(
                          verificationId: widget.verificationId,
                          smsCode: smscode);
                      try {
                        await auth.signInWithCredential(credential);
                        setState(() {
                          loading = false;
                        });

                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const SucessSignIn())));
                        Utils1().fluttertoast('Welcome to Glein');
                      } catch (error) {
                        setState(() {
                          loading = false;
                        });
                        Utils1().fluttertoast(
                            error.toString().split("]").last.toString());
                      }
                    },
                    child: loading
                        ? const CircularProgressIndicator(
                            strokeWidth: 2.2,
                            color: Colors.white,
                          )
                        : Text(
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
