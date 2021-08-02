import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sumber_rejeki/main/content/content1.dart';
import 'package:sumber_rejeki/main/content/content2.dart';
import 'package:sumber_rejeki/main/content/content3.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 10, 109, 0),
          onPressed: () {},
          child: Icon(Icons.shopping_cart_outlined),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('images/bg2.png'))),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: tinggi * 0.25,
                      width: lebar * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: tinggi * 0.02),
                                ),
                                Text('Eko123',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: tinggi * 0.04,
                                        fontWeight: FontWeight.w600)),
                              ])),
                          Container(
                            height: tinggi * 0.07,
                            margin: EdgeInsets.only(
                                bottom: tinggi * 0.01, top: tinggi * 0.04),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.2),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.green, width: 2.0),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      width: lebar * 0.9,
                      height: tinggi * 0.65,
                      child: Column(
                        children: [
                          const Content1(),
                          const Content2(),
                          const Content3(),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
