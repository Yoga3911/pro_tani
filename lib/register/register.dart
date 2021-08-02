import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sumber_rejeki/alert/alert.dart';
import 'package:sumber_rejeki/login/login.dart';
import 'package:sumber_rejeki/register/txt_fld.dart';
import 'package:sumber_rejeki/register/txt_fld_scr.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

bool isTap = true;

class _RegisterState extends State<Register> {
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
        backgroundColor: Colors.green[400],
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/bg1.png'))),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: tinggi*0.96,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Hero(
                            tag: 'x',
                            child: Container(
                              height: tinggi * 0.21,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/orang.png'))),
                            ),
                          ),                          Text(
                            'Registrasi',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: lebar * 0.1),
                          ),
                          Container(
                            height: tinggi * 0.5,
                            width: lebar * 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextFld(
                                  label: 'Username',
                                  hint: 'yoga3911',
                                  icon: Icons.person,
                                  isSecure: false,
                                  widget: SizedBox(),
                                ),
                                TextFldSecure(
                                  label: 'Password',
                                  hint: '',
                                  icon: Icons.lock,
                                  isSecure: true,
                                  widget: IconButton(
                                      splashRadius: 20,
                                      onPressed: () {
                                        setState(() {
                                          isTap = !isTap;
                                        });
                                      },
                                      icon: isTap
                                          ? Icon(
                                              Icons.visibility_off,
                                              color: Color.fromARGB(
                                                  255, 10, 109, 0),
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color: Color.fromARGB(
                                                  255, 10, 109, 0),
                                            )),
                                ),
                                TextFldSecure(
                                  label: 'Retype Password',
                                  hint: '',
                                  icon: Icons.lock,
                                  isSecure: true,
                                  widget: SizedBox(),
                                ),
                                TextFld(
                                  label: 'Email',
                                  hint: 'yoga3911@gmail.com',
                                  icon: Icons.mail,
                                  isSecure: false,
                                  widget: SizedBox(),
                                ),
                                FloatingActionButton.extended(
                                    elevation: 3,
                                    highlightElevation: 3,
                                    onPressed: () => alertDialRegister(context),
                                    label: Text('Register'),
                                    backgroundColor:
                                        Color.fromARGB(255, 10, 109, 0)),
                                RichText(
                                  text: TextSpan(
                                      text: 'Sudah memiliki akun?',
                                      children: [
                                        TextSpan(
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Get.to(() => Login(),
                                                    transition:
                                                        Transition.fadeIn,
                                                    duration: Duration(
                                                        milliseconds: 500));
                                              },
                                            text: ' Masuk',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 10, 109, 0)))
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
