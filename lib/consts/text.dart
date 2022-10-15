// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextF1 extends StatelessWidget {
  String text;
  TextF1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.50,
      child: Text(text,
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff191A1C))),
    );
  }
}

class Text21PtBlue extends StatelessWidget {
  String text;
  Text21PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 21.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff2B67A3)));
  }
}

class PostText extends StatelessWidget {
  String text;
  PostText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            color: const Color(0xff191A1C)));
  }
}

class Text20Pt extends StatelessWidget {
  String text;
  Text20Pt({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xff2B67A3)));
  }
}

class Text14Pt extends StatelessWidget {
  String text;
  Text14Pt({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: use_full_hex_values_for_flutter_colors
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff898989)),
    );
  }
}
class Text14Pt58 extends StatelessWidget {
  String text;
  Text14Pt58({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: use_full_hex_values_for_flutter_colors
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff485058)),
    );
  }
}

class Text14PtBlue extends StatelessWidget {
  String text;
  Text14PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: const Color(0xff2B67A3)),
    );
  }
}

class Text21PtBlack extends StatelessWidget {
  String text;
  Text21PtBlack({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            color: const Color(0xff191A1C)));
  }
}

class Text16Pt extends StatelessWidget {
  String text;
  Text16Pt({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: const Color(0xff485058)));
  }
}

class Text14ptSilver extends StatelessWidget {
  String text;
  Text14ptSilver({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          // ignore: use_full_hex_values_for_flutter_colors
          color: const Color(0xff48505899)),
    );
  }
}

class Text14ptOpacity50 extends StatelessWidget {
  String text;
  Text14ptOpacity50({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          // ignore: use_full_hex_values_for_flutter_colors
          color: Color.fromARGB(255, 159, 163, 169)),
    );
  }
}

class Text14ptDesc extends StatelessWidget {
  String text;
  Text14ptDesc({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Color(0xff485058)),
    );
  }
}

class Text16HMedium extends StatelessWidget {
  String text;
  Text16HMedium({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xffF2F9FF)),
    );
  }
}

class Text15PtBlue extends StatelessWidget {
  String text;
  Text15PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          color: const Color(0xff2B67A3)),
    );
  }
}

class Text15PtGrey extends StatelessWidget {
  String text;
  Text15PtGrey({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          // ignore: use_full_hex_values_for_flutter_colors
          color: const Color(0xff48505899)),
    );
  }
}

class Text16PtBlack extends StatelessWidget {
  String text;
  Text16PtBlack({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff191A1C)));
  }
}
class Text16PtBlack58 extends StatelessWidget {
  String text;
  Text16PtBlack58({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff485058)));
  }
}

class Text30ptBlue extends StatelessWidget {
  String text;
  Text30ptBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 30.sp,
            color: const Color(0xff2B67A3)));
  }
}

class Text16PtBlue extends StatelessWidget {
  String text;
  Text16PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xff2B67A3)));
  }
}
class Text16PtBlueMedium extends StatelessWidget {
  String text;
  Text16PtBlueMedium({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff2B67A3)));
  }
}

class Text20PtBlue extends StatelessWidget {
  String text;
  Text20PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff2B67A3)));
  }
}

class Text14PtTime extends StatelessWidget {
  String text;
  Text14PtTime({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: use_full_hex_values_for_flutter_colors
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff485058CC)),
    );
  }
}

class Text16PtDesc extends StatelessWidget {
  String text;
  Text16PtDesc({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff485058)));
  }
}

class Text20PtComment extends StatelessWidget {
  String text;
  Text20PtComment({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff485058)));
  }
}
class Text20PtBold extends StatelessWidget {
  String text;
  Text20PtBold({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff191A1C)));
  }
}

class Text20PtBlack extends StatelessWidget {
  String text;
  Text20PtBlack({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xff485058)));
  }
}

class Text16AddFeed extends StatelessWidget {
  String text;
  Text16AddFeed({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            // ignore: use_full_hex_values_for_flutter_colors
            color: const Color(0xffBBBBBB)));
  }
}
