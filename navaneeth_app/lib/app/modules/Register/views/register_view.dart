import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../home/views/home_view.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  double width = Get.width;
  double height = Get.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                height: height,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      left: 70,
                      bottom: width,
                      child: Container(
                        width: 500,
                        height: 500,
                        decoration: new BoxDecoration(
                          color: Color(0xff2196f3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 45,
                      top: 80,
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: new BoxDecoration(
                          color: Color(0xff1971b8),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      width: 700,
                      height: 600,
                      bottom: -450,
                      right: 130,
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
                          height: height / 3.2,
                          width: width - 50,
                        ),
                        Container(
                          width: width - 30,
                          height: height / 3,
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: height / 3,
                            width: width - 50,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 12),
                            child: Form(
                                child: Column(
                              children: [
                                Container(
                                  width: width,
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 44,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff2196f3),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Email (Required)"),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Pasword (Required)"),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: width,
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.left,
                                  ),
                                ), // Container(child: Text("HEllo")),
                              ],
                            )),
                          ),
                        ),
                        Container(
                          height: height / 3.5,
                          width: width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
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
                                  width: width / 1.8,
                                  height: width / 8,
                                  child: Row(children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook_rounded),
                                      color: Colors.white,
                                    ),
                                    const Text(
                                      'Login with Facebook',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Open Sans',
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff1878f3),
                                      borderRadius: BorderRadius.circular(8)),
                                  width: width / 1.8,
                                  height: width / 8,
                                  child: Row(children: [
                                    Image(
                                        image: AssetImage(
                                          'assets/google_g.png',
                                        ),
                                        height: 40),
                                    SizedBox(width: 20),
                                    const Text(
                                      'Sign In with Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Open Sans',
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                        ),
                        Container(
                            width: width,
                            padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                            child: Text(
                              'REGISTER',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color(0xff1971b8),
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    )),
                    Positioned(
                      bottom: 235,
                      right: 35,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 84, 174, 247),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Get.to(
                              () => HomeView(),
                            );
                            Get.put(HomeController());
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
