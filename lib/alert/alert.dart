import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sumber_rejeki/login/login.dart';
import 'package:sumber_rejeki/main/home.dart';

void alertDialRegister(BuildContext context) {
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    title: Text('Sukses'),
    content: Text('Selamat akun anda berhasil dibuat!'),
    actions: [
      TextButton(
          onPressed: () {
            Get.offAll(() => Login());
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
void alertDialLogin(BuildContext context) {
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    title: Text('Perhatian'),
    content: Text('Log In berhasil!'),
    actions: [
      TextButton(
          onPressed: () {
            Get.offAll(() => Home());
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
