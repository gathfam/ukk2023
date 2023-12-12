import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/telepon");
              },
              child: const Text("Telepon")),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/sms");
              },
              child: const Text("SMS"))
        ],
      )),
    );
  }
}
