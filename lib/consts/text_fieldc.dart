import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:intl/intl.dart';

  class TextFieldDatePicker extends StatefulWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  void Function(String?)? onSaved;
  TextFieldDatePicker(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.onSaved,
      required this.prefix,
      required this.onchanged})
      : super(key: key);

  @override
  State<TextFieldDatePicker> createState() => _TextFieldDatePickerState();
}

class _TextFieldDatePickerState extends State<TextFieldDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 356.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        onSaved: widget.onSaved,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
        ],
        controller: widget.textEditingController,
        onChanged: widget.onchanged,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: widget.prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            enabledBorder: const OutlineInputBorder(
                // ignore: use_full_hex_values_for_flutter_colors
                borderSide: BorderSide(
                    color: Color.fromRGBO(113, 154, 195, 0.16), width: 1))),
        readOnly: true,
        //set it true, so that user will not able to edit text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2100));

          if (pickedDate != null) {
            print(
                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
            print(
                formattedDate); //formatted date output using intl package =>  2021-03-16
            setState(() {
              widget.textEditingController.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {}
        },
      ),
    );
  }
}

class TextFEmail extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  Key keyValue;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  String? suffixText;
  TextFEmail(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.prefix,
      required this.keyValue,
      required this.onSaved,
      required this.validator,
      required this.suffixText,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromRGBO(113, 154, 195, 0.16)),
          boxShadow: const [
            BoxShadow(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color.fromRGBO(113, 154, 195, 0.16),
                // blurRadius: 0,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: keyValue,
          controller: textEditingController,
          onChanged: onchanged,
          validator: validator,
          onSaved: onSaved,
          keyboardType: textInputType,
          decoration: InputDecoration(
              isCollapsed: true,
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 20.w, top: 12.h, right: 15.w),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color(0xff48505899)),
              fillColor: Colors.white,
              prefix: prefix,
              suffixText: suffixText,
              suffixStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff2B67A3)))),
    );
  }
}

class TextFirstName extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  void Function(String?)? onSaved;
  TextFirstName(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.prefix,
      required this.onSaved,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 356.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        onSaved: onSaved,
        // inputFormatters: [
        //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
        // ],
        controller: textEditingController,
        onChanged: onchanged,
        keyboardType: textInputType,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            enabledBorder: const OutlineInputBorder(
                // ignore: use_full_hex_values_for_flutter_colors
                borderSide: BorderSide(
                    color: Color.fromRGBO(113, 154, 195, 0.16), width: 1))),
      ),
    );
  }
}

class TextFSpotlight extends StatelessWidget {
  TextEditingController? textEditingController;
  String? hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;

  TextFSpotlight(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.prefix,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 306.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: TextField(
          controller: textEditingController,
          onChanged: onchanged,
          keyboardType: textInputType,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color(0xff485058)),
              fillColor: Colors.white,
              prefix: prefix,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              suffixIcon: const Icon(Icons.close)
              // ignore: use_full_hex_values_for_flutter_colors
              )),
    );
  }
}

class TextFEventList extends StatelessWidget {
  TextEditingController? textEditingController;
  String? hintText;
  TextInputType textInputType;
  Widget? prefix;
  Function(String?)? onSaved;
  void Function(String)? onchanged;
  Function()? onTap;

  TextFEventList(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.prefix,
      required this.onSaved,
      required this.onTap,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 306.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
          controller: textEditingController,
          onSaved: onSaved,
          onChanged: onchanged,
          keyboardType: textInputType,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color.fromARGB(70, 58, 60, 74)),
              fillColor: Colors.white,
              prefix: prefix,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              suffixIcon: GestureDetector(
                onTap: onTap,
                child: const Icon(Icons.search))
              // ignore: use_full_hex_values_for_flutter_colors
              )),
    );
  }
}

class TextFContainer extends StatelessWidget {
  String text;
  TextFContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, top: 14.h, bottom: 12.h),
      height: 52.h,
      width: 356.w,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(113, 154, 195, 0.16),
                blurRadius: 0,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16))),
      child: Text(text,
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              // ignore: use_full_hex_values_for_flutter_colors
              color: const Color(0xff48505899))),
    );
  }
}

class TextFCon extends StatelessWidget {
  String text;
  TextFCon({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20.w, top: 14.h, bottom: 12.h),
        height: 52.h,
        width: 356.w,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16))),
        child: Text16PtBlack(
          text: text,
        ));
  }
}
class BigTextFieldDetails extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  BigTextFieldDetails({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.onchanged,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.h,
        width: 356.w,
        decoration: BoxDecoration(
          boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ],border: Border.all(width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16)),
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: TextField(
          controller: textEditingController,
          maxLines: null,
          onChanged: onchanged,
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
          ),
        ));
  }
}