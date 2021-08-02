import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sumber_rejeki/main/page1.dart';
import 'package:sumber_rejeki/main/page2.dart';
import 'package:sumber_rejeki/main/page3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const List<Widget> dataWidget = [Page1(), Page2(), Page3()];

  int page = 0;
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
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: MediaQuery.of(context).size.height * 0.07,
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color.fromARGB(255, 94, 180, 96),
        color: Color.fromARGB(255, 94, 180, 96),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: [
          const IconBotNav(iconData: Icons.home, label: 'Home'),
          const IconBotNav(
              iconData: Icons.add_shopping_cart_rounded, label: 'Shop'),
          const IconBotNav(iconData: Icons.person, label: 'Profile'),
        ],
      ),
      body: dataWidget[page],
    );
  }
}

class IconBotNav extends StatelessWidget {
  const IconBotNav({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(label,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
          ]),
    );
  }
}
