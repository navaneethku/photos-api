import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  double width = Get.width;
  double height = Get.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    left: 50,
                    top: 40,
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
                  Positioned.fill(
                      child: Column(
                    children: [
                      Container(
                        height: height / 3,
                        width: width - 50,
                      ),
                      Container(
                        width: width - 30,
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
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                              )
                            ],
                          )),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: width,
                        color: Colors.yellow,
                      ),
                      Container(
                          width: width,
                          padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                          child: Text(
                            'REGISTER',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color(0xff2196f3),
                                fontFamily: 'Open Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
