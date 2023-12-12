import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import '../controllers/telepon_controller.dart';

class TeleponView extends GetView<TeleponController> {
  const TeleponView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Panggilan Telepon',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("No Telepon"),
            SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(hintText: "Nomor Telepon")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              UrlLauncher.launch("tel:12341243123");
            }, child: const Text("Call"))
          ],
        )),
      ),
    );
  }
}
