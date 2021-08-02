import 'package:flutter/material.dart';
import 'package:sumber_rejeki/design/color.dart';

class DataSet extends StatelessWidget {
  final String foto;
  final String label;
  const DataSet({Key? key, required this.foto, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Warna().hijauMuda,
        title: Text(label, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        actions: [
          Icon(Icons.bookmark_add_outlined)
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(foto), fit: BoxFit.cover),
              ),
            ),
          ),
          Flexible(child: Container(), flex: 1,),
          Flexible(child: Container(child: Text('Kosong seperti hatiku :v', style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03)),), flex: 2,),
        ],
      ),
    );
  }
}
