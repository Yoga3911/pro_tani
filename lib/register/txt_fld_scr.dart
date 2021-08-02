import 'package:flutter/material.dart';

import 'register.dart';

class TextFldSecure extends StatefulWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isSecure;
  final Widget widget;

  const TextFldSecure(
      {Key? key,
      required this.label,
      required this.hint,
      required this.icon,
      required this.isSecure,
      required this.widget})
      : super(key: key);

  @override
  _TextFldSecureState createState() => _TextFldSecureState();
}

class _TextFldSecureState extends State<TextFldSecure> {
  bool isError = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return SizedBox(
      height: tinggi*0.065,
      width: lebar*0.7,
      child: TextField(
        onChanged: (tap) {
          setState(() {
            if (controller.text.length >= 1 && controller.text.length < 6) {
              isError = true;
            } else {
              isError = false;
            }
          });
        },
        controller: controller,
        autocorrect: false,
        enableSuggestions: false,
        obscureText: isTap,
        style: TextStyle(color: Color.fromARGB(255, 10, 109, 0)),
        cursorColor: Color.fromARGB(255, 10, 109, 0),
        decoration: InputDecoration(
          errorText: isError? 'Tidak boleh kurang dari 6 karakter' : null ,
          suffixIcon: widget.widget,
          prefixIcon: Icon(
            widget.icon,
            color: Color.fromARGB(255, 10, 109, 0),
          ),
          labelStyle: TextStyle(color: Color.fromARGB(255, 10, 109, 0)),
          labelText: widget.label,
          hintText: widget.hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 10, 109, 0),
                width: 2.0,
              )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.green[200]!.withOpacity(0.6),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
class TextFldSecure2 extends StatefulWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isSecure;
  final Widget widget;

  const TextFldSecure2(
      {Key? key,
      required this.label,
      required this.hint,
      required this.icon,
      required this.isSecure,
      required this.widget})
      : super(key: key);

  @override
  _TextFldSecure2State createState() => _TextFldSecure2State();
}

class _TextFldSecure2State extends State<TextFldSecure2> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return SizedBox(
      height: tinggi*0.065,
      width: lebar*0.8,
      child: TextField(
        controller: controller,
        autocorrect: false,
        enableSuggestions: false,
        obscureText: isTap,
        style: TextStyle(color: Color.fromARGB(255, 10, 109, 0)),
        cursorColor: Color.fromARGB(255, 10, 109, 0),
        decoration: InputDecoration(
          suffixIcon: widget.widget,
          prefixIcon: Icon(
            widget.icon,
            color: Color.fromARGB(255, 10, 109, 0),
          ),
          labelStyle: TextStyle(color: Color.fromARGB(255, 10, 109, 0)),
          labelText: widget.label,
          hintText: widget.hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 10, 109, 0),
                width: 2.0,
              )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.green[200]!.withOpacity(0.6),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
