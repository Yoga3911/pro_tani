import 'package:flutter/material.dart';
import 'package:get/get.dart';

void alertProduct(
    BuildContext context, String nama, String harga, String file) {
  final count = 0.obs;
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    title: Text(nama),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02),
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(file), fit: BoxFit.cover)),
        ),
        Text(harga),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    count.value--;
                  },
                  icon: Icon(Icons.remove)),
              (Obx(() => Text(count.value.toString()))),
              IconButton(
                  onPressed: () {
                    count.value++;
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
        )
      ],
    ),
    actions: [
      TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Ok'))
    ],
  );
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
