import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navaneeth_app/app/modules/home/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: IconButton(color: Colors.grey,onPressed: () => {Get.back()}, icon: Icon(Icons.arrow_back_ios),),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : ListView(
                    children: controller.images
                        .map<Widget>((image) => Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
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
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.more_horiz_rounded,
                                                size: 30,
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(14),
                                      child: Text(image.title),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(14),
                                      child: Image.network("${image.url}"),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
          );
        });
  }
}
