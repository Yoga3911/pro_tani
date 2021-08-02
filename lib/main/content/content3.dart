import 'package:flutter/material.dart';
import 'package:sumber_rejeki/main/content/card.dart';
import 'package:sumber_rejeki/main/content/data_konten.dart';

class Content3 extends StatelessWidget {
  const Content3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 7,
        child: Container(
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: DATA.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return MyCard(
                    foto: DATA[index]['foto'].toString(),
                    label: DATA[index]['label'].toString());
              }),
        ));
  }
}
