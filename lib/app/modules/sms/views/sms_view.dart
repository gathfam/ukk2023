import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sms_controller.dart';

class SmsView extends GetView<SmsController> {
  const SmsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sms',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          // direction: Axis.vertical,
          // spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Lengkapi isian di bawah untuk mengirim SMS"),
            const TextField(),
            const TextField(),
            SizedBox(height: 15,),
            Wrap(
              spacing: 15,
              direction: Axis.vertical,
              // alignment: WrapAlignment.center,
              // crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: const Text("Kirim SMS lewat SMS Manager")),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text("Kirim SMS lewat SENDTO")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Kirim SMS lewat VIEW"))
              ],
            )
          ],
        )),
      ),
    );
  }
}
