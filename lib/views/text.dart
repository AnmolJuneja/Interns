import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Textff extends StatefulWidget {
  const Textff({Key? key}) : super(key: key);

  @override
  State<Textff> createState() => _TextffState();
}

class _TextffState extends State<Textff> {
  final controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  String? get _errorText {
    final text = controller.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }

    return null;
  }

  var text = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        // key: _formkey,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xff9F9F9F)),
            contentPadding: EdgeInsets.only(
                top: 19.h, left: 20.w, bottom: 15.h, right: 170.w),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            errorText: _errorText),
        onChanged: (text) => setState(() => text));
  }
}
