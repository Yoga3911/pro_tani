import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sumber_rejeki/main/data%20set/data_set.dart';

class MyCard extends StatelessWidget {
  final String foto;
  final String label;
  const MyCard({Key? key, required this.foto, required this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(foto), fit: BoxFit.cover)),
        child: Material(
          child: Align(
              alignment: Alignment(-0.9, 0.9),
              child: Text(
                label,
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
              )),
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.3),
        ),
      ),
      onTap: () {
        Get.to(() => DataSet(foto: foto, label: label,));
      },
    );
  }
}
