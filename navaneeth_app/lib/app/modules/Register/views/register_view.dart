import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      //topRightBlueCircle
                      left: width / 5.5,
                      bottom: width / 1.21,
                      child: Container(
                        width: height / 1.4,
                        height: height / 1.4,
                        decoration: new BoxDecoration(
                          color: Color(0xff2196f3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 8,
                      top: width / 7,
                      child: Container(
                        width: width / 3,
                        height: width / 3,
                        decoration: new BoxDecoration(
                          color: Color(0xff1971b8),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      width: height,
                      height: height / 1.3,
                      bottom: -width / 0.85,
                      right: width / 3,
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
                          height: height / 3.6,
                          width: width - 50,
                        ),
                        Container(
                          width: width - 20,
                          height: height / 2.9,
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
                                      letterSpacing: 1.3,
                                      fontSize: 49,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1876d6),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Email (Required)",
                                      labelStyle: TextStyle(fontSize: 19)),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Password (Required)",
                                      labelStyle: TextStyle(fontSize: 19)),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: width,
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                // Container(child: Text("HEllo")),
                              ],
                            )),
                          ),
                        ),
                        Stack(children: [
                          Positioned(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              heightFactor: 0.45,
                              widthFactor: 4,
                              child: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  color: Color(0xff2196f3),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Get.to(
                                      () => HomeView(),
                                    );
                                  },
                                  icon: Icon(
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
                          height: height / 5,
                          width: width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "or Login with",
                                    style: TextStyle(fontSize: 19),
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
                                  height: width / 8.5,
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
                                      width: width / 2.5,
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
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff4786eb),
                                      borderRadius: BorderRadius.circular(8)),
                                  width: width / 1.8,
                                  height: width / 9,
                                  child: Row(children: [
                                    Image(
                                        image: AssetImage(
                                          'assets/google_g.png',
                                        ),
                                        height: 50),
                                    Container(
                                      width: width / 2.3,
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
                              width: width / 3,
                              height: width / 6,
                              padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'REGISTER',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xff1160b0),
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
