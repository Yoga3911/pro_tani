import 'package:flutter/material.dart';

class Content1 extends StatelessWidget {
  const Content1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    return Flexible(
        flex: 4,
        child: Container(
          child: Row(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(tinggi * 0.01),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/traktor.jpg'),
                            fit: BoxFit.cover)),
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.end,
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Text(
                                'Kementan Pikat Generasi Muda Bertani dengan Alsintan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: tinggi * 0.02)),
                          ],
                        ),
                        Text('Liputan6.com',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
