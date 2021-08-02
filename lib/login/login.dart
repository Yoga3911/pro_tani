import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sumber_rejeki/alert/alert.dart';
import 'package:sumber_rejeki/register/register.dart';
import 'package:sumber_rejeki/register/txt_fld.dart';
import 'package:sumber_rejeki/register/txt_fld_scr.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'x',
                          child: Container(
                            height: tinggi * 0.21,
                            margin: EdgeInsets.only(
                                bottom: tinggi * 0.03, top: tinggi * 0.02),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/orang.png'))),
                          ),
                        ),
                        Text(
                          'Pro-Tani',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 10, 109, 0),
                              fontSize: lebar * 0.1),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: LayoutBuilder(
                    builder: (context, constraint) {
                      return Container(
                          margin: EdgeInsets.only(top: tinggi * 0.35),
                          height: tinggi * 0.6,
                          width: lebar * 0.75,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextFld2(
                                    label: 'Username',
                                    hint: 'eko123',
                                    icon: Icons.person,
                                    isSecure: false,
                                    widget: SizedBox()),
                                TextFldSecure2(
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
                                FloatingActionButton.extended(
                                    elevation: 3,
                                    highlightElevation: 3,
                                    onPressed: () => alertDialLogin(context),
                                    label: SizedBox(child: Text('Log In')),
                                    backgroundColor:
                                        Color.fromARGB(255, 10, 109, 0)),
                                LoginTile(
                                  icon: 'images/google.png',
                                  label: 'Masuk dengan akun Google',
                                ),
                                LoginTile(
                                  icon: 'images/facebook.png',
                                  label: 'Masuk dengan Facebook',
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(text: 'Belum memiliki akun?'),
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => Get.to(() => Register(),
                                            transition: Transition.fade,
                                            duration:
                                                Duration(milliseconds: 500)),
                                      text: ' Daftar',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 10, 109, 0)))
                                ]))
                              ]));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginTile extends StatelessWidget {
  final String icon;
  final String label;
  const LoginTile({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return SizedBox(
      height: tinggi*0.06,
      width: lebar*0.8,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading:
            Transform.scale(scale: 0.6, child: Image(image: AssetImage(icon))),
        tileColor: Colors.green[200]!.withOpacity(0.6),
        title: Text(label, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
