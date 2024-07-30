import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:glein/screens/phone_number.dart';
import 'package:glein/screens/success_sign.dart';
import 'package:glein/screens/under_progress.dart';

import '../utils/utils1.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool loading = false;
  final _formfeild = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isSignUp = true;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void register() {
    setState(() {
      loading = true;
    });

    auth
        .createUserWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const SucessSignIn())));
      // print(value.toString());
      setState(() {
        loading = false;
      });
      Utils1().fluttertoast("User successfully registered");
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
      });
      Utils1().fluttertoast(error.toString().split("]").last.toString());
    });
  }

  void login() {
    setState(() {
      loading = true;
    });
    auth
        .signInWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const SucessSignIn())));
      setState(() {
        loading = false;
      });
      Utils1().fluttertoast('Succesfully Login');
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
      });
      Utils1().fluttertoast(error.toString().split(']').last.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * .062,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              isSignUp ? Colors.white : Colors.black),
                          elevation: const MaterialStatePropertyAll(0),

                          // maximumSize: Size(w*0.2 ,h*0.05)
                        ),
                        onPressed: () {
                          isSignUp = false;
                          setState(() {});
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontSize: w * .033,
                              fontFamily: 'Mont_s',
                              color: isSignUp
                                  ? const Color(0xff998FA2)
                                  : Colors.white),
                        )),
                    SizedBox(
                      width: w * 0.11,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              isSignUp ? Colors.black : Colors.white),
                          elevation: const MaterialStatePropertyAll(0),
                          // maximumSize: Size(w*0.2 ,h*0.05)
                        ),
                        onPressed: () {
                          isSignUp = true;
                          setState(() {});
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: w * .033,
                              fontFamily: 'Mont_s',
                              color: isSignUp
                                  ? Colors.white
                                  : const Color(0xff998FA2)),
                        )),
                  ],
                ),
              ),
              Container(
                height: h * 0.027,
                color: Colors.white,
              ),
              SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 247, 247, 247),
                  padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                  child: Form(
                    key: _formfeild,
                    child: Column(
                      children: [
                        // isSignUp
                        //     ? Padding(
                        //         padding: EdgeInsets.only(top: h * 0.035),
                        //         child: TextFormField(
                        //           controller: nameController,
                        //           decoration: InputDecoration(
                        //               contentPadding:
                        //                   EdgeInsets.only(left: w * 0.0275),
                        //               hintText: "Name",
                        //               hintStyle: TextStyle(
                        //                   fontSize: w * 0.0385,
                        //                   color: const Color.fromARGB(
                        //                       100, 36, 19, 50))),
                        //           validator: (value) {
                        //             if (value!.isEmpty) {
                        //               return 'Enter Name';
                        //             }
                        //             return null;
                        //           },
                        //         ),
                        //       )
                        //     : Container(),
                        Padding(
                          padding: EdgeInsets.only(top: 25, bottom: h * 0.02),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: w * 0.0275),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    fontSize: w * 0.0385,
                                    color:
                                        const Color.fromARGB(100, 36, 19, 50))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02, bottom: 20),
                          child: TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: w * 0.0275),
                                hintText: isSignUp
                                    ? "Create Password"
                                    : 'Enter Password',
                                hintStyle: TextStyle(
                                    fontSize: w * 0.0385,
                                    color:
                                        const Color.fromARGB(100, 36, 19, 50))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return isSignUp
                                    ? 'Create a password'
                                    : 'Enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.0375,
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
                          isSignUp ? register() : login();
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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isSignUp
                          ? ' Sign Up with Phone Number ->'
                          : ' Sign In with Phone Number ->',
                      style: TextStyle(
                        fontSize: w * 0.04,
                        fontFamily: 'Mont_r',
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const PhoneNumber())));
                        },
                        icon: const Icon(Icons.phone_android_outlined))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.03, bottom: h * 0.01),
                child: Text(
                  "Or Continue with",
                  style: TextStyle(fontSize: w * 0.0417, fontFamily: 'Mont_m'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.092,
                    width: w * 0.197,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UnderProgress())));
                        },
                        child: Image.asset('assets/images/google.png')),
                  ),
                  SizedBox(
                    height: h * 0.092,
                    width: w * 0.197,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UnderProgress())));
                        },
                        child: Image.asset('assets/images/facebook.png')),
                  ),
                  SizedBox(
                    height: h * 0.092,
                    width: w * 0.197,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UnderProgress())));
                        },
                        child: Image.asset('assets/images/apple.png')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isSignUp
                      ? Padding(
                          padding: EdgeInsets.only(top: h * 0.035),
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(
                                fontSize: w * 0.0334, fontFamily: 'Mont_r'),
                          ),
                        )
                      : Container(),
                  InkWell(
                    onTap: () {
                      isSignUp = false;
                      setState(() {});
                    },
                    child: isSignUp
                        ? Padding(
                            padding: EdgeInsets.only(top: h * 0.035),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: w * 0.0334,
                                fontFamily: 'Mont_b',
                              ),
                            ),
                          )
                        : Container(),
                  ),
                ],
              ),
              isSignUp
                  ? Padding(
                      padding: EdgeInsets.only(top: h * 0.0313),
                      child: Text(
                        'By clicking continue, I agree to the all the Terms',
                        style: TextStyle(
                            fontSize: w * 0.0334, fontFamily: 'Mont_r'),
                      ),
                    )
                  : Container(),
            ],
          ),
        ));
  }
}
