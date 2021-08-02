import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sumber_rejeki/design/color.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<bool> tab = [true, false];
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: tinggi * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Warna().hijauMuda),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1,
                    child: Container(
                      height: tinggi * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/user.png'))),
                    ),
                  ),
                  SizedBox(height: tinggi * 0.03),
                  Text(
                    'Eko123',
                    style: TextStyle(
                        fontSize: tinggi * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Pengikut 98 | Mengikuti 5',
                    style: TextStyle(
                        fontSize: tinggi * 0.015,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Center(
            heightFactor: tinggi * 0.013,
            child: Container(
              height: tinggi * 0.05,
              width: lebar * 0.6,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tab[0] = true;
                            tab[1] = false;
                          });
                        },
                        child: Container(
                          height: tinggi,
                          width: lebar,
                          child: Center(
                              child: Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: tinggi * 0.023,
                                color:
                                    tab[0] ? Colors.white : Warna().hijauMuda,
                                fontWeight: FontWeight.w700),
                          )),
                          decoration: BoxDecoration(
                              color: tab[0]
                                  ? Color.fromARGB(255, 10, 109, 0)
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tab[1] = true;
                            tab[0] = false;
                          });
                        },
                        child: Container(
                          height: tinggi,
                          width: lebar,
                          child: Center(
                              child: Text(
                            'Postingan',
                            style: TextStyle(
                                fontSize: tinggi * 0.023,
                                color:
                                    tab[1] ? Colors.white : Warna().hijauMuda,
                                fontWeight: FontWeight.w700),
                          )),
                          decoration: BoxDecoration(
                              color: tab[1]
                                  ? Color.fromARGB(255, 10, 109, 0)
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: tinggi * 0.32),
              width: lebar * 0.85,
              height: tinggi * 0.58,
              color: Colors.transparent,
              child: Column(
                children: [
                  Flexible(
                      flex: 6,
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Flexible(
                                flex: 1,
                                child: ListTile(
                                  title: Text('Akun'),
                                )),
                            const Settings(
                                label: 'Ubah Profil', icon: Icons.person_sharp),
                            const Settings(
                                label: 'Kode Promo',
                                icon:
                                    Icons.production_quantity_limits_outlined),
                            const Settings(
                                label: 'Notifikasi', icon: Icons.notifications),
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 4,
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Flexible(
                                flex: 1,
                                child: ListTile(
                                  title: Text('Keamanan'),
                                )),
                            const Settings(
                                label: 'Ubah Kata Sandi',
                                icon: Icons.privacy_tip)
                          ],
                        ),
                        margin: EdgeInsets.only(
                            top: tinggi * 0.01, bottom: tinggi * 0.01),
                      )),
                  Flexible(
                      flex: 7,
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Flexible(
                                flex: 1,
                                child: ListTile(
                                  title: Text('Tentang'),
                                )),
                            const Settings(
                                label: 'Keuntungan Pakai Pro-Tani',
                                icon: Icons.task_alt),
                            const Settings(
                                label: 'Panduan Pro-Tani',
                                icon: Icons.gite_rounded),
                            const Settings(
                                label: 'Syarat dan Ketentuan',
                                icon: Icons.design_services),
                            const Settings(
                                label: 'Kebijakan Privasi',
                                icon: Icons.settings),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: ListTile(
            onTap: () {},
            leading: Icon(icon),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            title: Text(label)));
  }
}
