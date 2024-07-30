import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glein/screens/sign_up_in.dart';
import 'package:glein/screens/verfication.dart';
import 'package:glein/utils/utils1.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _formfeild = GlobalKey<FormState>();
  final phonecontroller = TextEditingController();
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
          "With Phone Number",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 25, top: 40),
                child: Text(
                  'Enter your Phone Number:',
                  style: TextStyle(
                      fontFamily: 'Mont_r',
                      fontSize: 15,
                      color: Color.fromARGB(255, 119, 119, 119)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                    width: 200,
                    child: Form(
                      key: _formfeild,
                      child: TextFormField(
                        controller: phonecontroller,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          counterText: "",
                          hintText: 'Enter your number',
                          // border: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 197, 197),
                              fontSize: 17),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                        maxLength: 10,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Phone Number';
                          }
                          return null;
                        },
                      ),
                    )),
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
                      onPressed: () {
                        if (_formfeild.currentState!.validate()) {
                          setState(() {
                            loading = true;
                          });
                          auth.verifyPhoneNumber(
                              phoneNumber: "+91${phonecontroller.text}",
                              verificationCompleted: (_) {
                                setState(() {
                                  loading = false;
                                });
                              },
                              verificationFailed: (error) {
                                setState(() {
                                  loading = false;
                                });
                                Utils1().fluttertoast(error
                                    .toString()
                                    .split(']')
                                    .last
                                    .toString());
                              },
                              codeSent: (String verificationId, int? token) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Verification(
                                              verificationId: verificationId,
                                            ))));
                                setState(() {
                                  loading = false;
                                });
                              },
                              codeAutoRetrievalTimeout: (error) {
                                Utils1().fluttertoast(error
                                    .toString()
                                    .split(']')
                                    .last
                                    .toString());
                                setState(() {
                                  loading = false;
                                });
                              });
                        }
                      },
                      child: loading
                          ? const CircularProgressIndicator(
                              strokeWidth: 2.2,
                              color: Colors.white,
                            )
                          : Text(
                              "Send OTP",
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
    );
  }
}
