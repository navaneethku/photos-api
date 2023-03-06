import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../home/views/home_view.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 400,
          child: Column(
            children: [
              Container(
                height: 800,
                width: 400,
                child: Stack(
                  children: [
                    Positioned(
                      //topRightBlueCircle
                      left: 400 / 5.5,
                      bottom: 400 / 1.21,
                      child: Container(
                        width: 800 / 1.4,
                        height: 800 / 1.4,
                        decoration: new BoxDecoration(
                          color: Color(0xff2196f3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      //smalldarkBlueCircle
                      left: 50,
                      top: 61,
                      child: Container(
                        width: 132,
                        height: 132,
                        decoration: new BoxDecoration(
                          color: Color(0xff1971b8),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      //BottomLeftOval
                      width: 800,
                      height: 615,
                      bottom: -450,
                      right: 100,
                      child: ClipOval(
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Color(0xff2196f3),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        child: Column(
                      children: [
                        Container(
                          height: 800 / 3.6,
                          width: 400 - 50,
                        ),
                        Container(
                          width: 340,
                          height: 270,
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 181, 179, 179),
                                  blurRadius: 9,
                                  offset: Offset(
                                    1.0,
                                    3.0,
                                  ),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 250,
                            width: 200,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 12),
                            child: Form(
                                child: Column(
                              children: [
                                Container(
                                  width: 300,
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      letterSpacing: 1.3,
                                      fontSize: 49,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1676d4),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Email (Required)",
                                      labelStyle: TextStyle(fontSize: 18)),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Password (Required)",
                                      labelStyle: TextStyle(fontSize: 18)),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: 400,
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ),
                        Stack(children: [
                          Positioned(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              heightFactor: 0.45,
                              widthFactor: 3.5,
                              child: GestureDetector(
                                onTap:() => Get.to(() => HomeView()),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff2196f3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          height: 150,
                          width: 400,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "or Login with",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff1878f3),
                                      borderRadius: BorderRadius.circular(8)),
                                  width: 400 / 1.8,
                                  height: 400 / 8.5,
                                  child: Row(children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.facebook_rounded,
                                        size: 35,
                                      ),
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width: 400 / 2.5,
                                      child: const Text(
                                        'Login with Facebook',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Open Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff4786eb),
                                      borderRadius: BorderRadius.circular(8)),
                                  width: 400 / 1.8,
                                  height: 400 / 9,
                                  child: Row(children: [
                                    Image(
                                        image: AssetImage(
                                          'assets/google_g.png',
                                        ),
                                        height: 50),
                                    Container(
                                      width: 400 / 2.3,
                                      child: const Text(
                                        'Sign In with Google',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Open Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 150,
                              height: 50,
                              padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'REGISTER',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff185ca2),
                                      fontFamily: 'Open Sans',
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
