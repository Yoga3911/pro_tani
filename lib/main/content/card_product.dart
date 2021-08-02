import 'package:flutter/material.dart';
import 'package:sumber_rejeki/alert/alert_product.dart';
import 'package:sumber_rejeki/design/color.dart';

class MyProductCard extends StatelessWidget {
  final String foto;
  final String label;
  final String berat;
  final String lokasi;
  final String harga;
  const MyProductCard(
      {Key? key,
      required this.foto,
      required this.label,
      required this.berat,
      required this.lokasi,
      required this.harga})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        alertProduct(context, label, harga, foto);
      },
      child: SizedBox(
        height: tinggi * 0.2,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.all(tinggi * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(foto), fit: BoxFit.cover)),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label,
                          style: TextStyle(
                              fontSize: tinggi * 0.023,
                              fontWeight: FontWeight.w700)),
                      Text('Kualitas Premium - $berat',
                          style: TextStyle(
                              fontSize: tinggi * 0.018,
                              fontWeight: FontWeight.w500)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.location_on_rounded),
                          Expanded(child: Text(lokasi))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: tinggi * 0.02, bottom: tinggi*0.01),
                        child: Icon(Icons.add_shopping_cart_rounded,
                            color: Warna().hijauMuda, size: tinggi * 0.035),
                      ),
                      Text(harga, style: TextStyle(fontSize: tinggi*0.012))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
