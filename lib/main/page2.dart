import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sumber_rejeki/design/color.dart';
import 'package:sumber_rejeki/main/content/card_product.dart';
import 'package:sumber_rejeki/main/content/product.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final tinggi = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.store),
          backgroundColor: Warna().hijauMuda,
          title: Container(
            margin: EdgeInsets.only(top: tinggi * 0.1, bottom: tinggi * 0.1),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                hintText: 'Apa yang anda sedang cari?',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: PRODUCT.length,
            itemBuilder: (context, index) {
              return MyProductCard(
                  foto: PRODUCT[index]['foto'].toString(),
                  label: PRODUCT[index]['nama'].toString(),
                  berat: PRODUCT[index]['berat'].toString(),
                  lokasi: PRODUCT[index]['lokasi'].toString(),
                  harga: PRODUCT[index]['harga'].toString());
            }),
      ),
    );
  }
}
