import 'package:flutter/material.dart';

import 'data_bool.dart';

class Content2 extends StatefulWidget {
  const Content2({Key? key}) : super(key: key);

  @override
  _Content2State createState() => _Content2State();
}

class _Content2State extends State<Content2> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Flexible(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(
              bottom: tinggi * 0.01, left: tinggi * 0.01, right: tinggi * 0.01, top: tinggi*0.01),
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        data[0] = true;
                        data[1] = false;
                        data[2] = false;
                      });
                    },
                    child: Container(
                      height: tinggi,
                      width: lebar,
                      child: Center(
                          child: Text(
                        'Ladang',
                        style: TextStyle(
                            color: data[0]
                                ? Colors.white
                                : Color.fromARGB(255, 94, 180, 96),
                            fontWeight: FontWeight.w900,
                            fontSize: tinggi * 0.02),
                      )),
                      decoration: BoxDecoration(
                        color: data[0]?Color.fromARGB(255, 94, 180, 96) : Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        data[1] = true;
                        data[0] = false;
                        data[2] = false;
                      });
                    },
                    child: Container(
                      color: data[1]?Color.fromARGB(255, 94, 180, 96) : Colors.white,
                      height: tinggi,
                      width: lebar,
                      child: Center(
                          child: Text('Hidroponik',
                              style: TextStyle(
                                  color: data[1]
                                      ? Colors.white
                                      : Color.fromARGB(255, 94, 180, 96),
                                  fontWeight: FontWeight.w900,
                                  fontSize: tinggi * 0.02))),
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        data[2] = true;
                        data[0] = false;
                        data[1] = false;
                      });
                    },
                    child: Container(
                      height: tinggi,
                      width: lebar,
                      child: Center(
                          child: Text('Hias',
                              style: TextStyle(
                                  color: data[2]
                                      ? Colors.white
                                      : Color.fromARGB(255, 94, 180, 96),
                                  fontWeight: FontWeight.w900,
                                  fontSize: tinggi * 0.02))),
                      decoration: BoxDecoration(
                        color: data[2]?Color.fromARGB(255, 94, 180, 96) : Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  )),
            ],
          ),
        ));
  }
}
