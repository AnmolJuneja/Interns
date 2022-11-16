// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';

class TextF extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  bool? readOnly;
  TextF(
      {Key? key,
      required this.readOnly,
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
      width: 356.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        readOnly: readOnly!,
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

class TextFS extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  TextFS({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        onChanged: (value) {
          // if (value.length == 1) {
          //   FocusScope.of(context).nextFocus();
          // }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: textEditingController,
        keyboardType: textInputType,
        decoration: InputDecoration(
            border: InputBorder.none,
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

class BigTextField extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  BigTextField({
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
        height: 112.h,
        width: 356.w,
        decoration: BoxDecoration(
            // ignore: use_full_hex_values_for_flutter_colors
            border:
                Border.all(color: const Color.fromRGBO(113, 154, 195, 0.16)),
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
        child: TextField(
          maxLines: null,
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
            // enabledBorder: const OutlineInputBorder(
            //     // ignore: use_full_hex_values_for_flutter_colors
            //     borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
          ),
        ));
  }
}

class TextFhint extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  TextFhint(
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
      width: 356.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
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
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff485058)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            enabledBorder: const OutlineInputBorder(
                // ignore: use_full_hex_values_for_flutter_colors
                borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
      ),
    );
  }
}

class BigTextFieldhint extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  BigTextFieldhint({
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
        height: 112.h,
        width: 356.w,
        decoration: BoxDecoration(
            // ignore: use_full_hex_values_for_flutter_colors
            border: Border.all(color: const Color(0xff2B67A329)),
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
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
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff485058)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,

            // ignore: use_full_hex_values_for_flutter_colors
            // enabledBorder: const OutlineInputBorder(
            //     // ignore: use_full_hex_values_for_flutter_colors
            //     borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
          ),
        ));
  }
}

class TextFSearch extends StatelessWidget {
  TextEditingController? textEditingController;
  String? hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;

  TextFSearch(
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
      width: 356.w,
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
                  color: const Color(0xff48505899)),
              fillColor: Colors.white,
              prefix: prefix,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              suffixIcon: const Icon(Icons.search)
              // ignore: use_full_hex_values_for_flutter_colors
              )),
    );
  }
}

class TextFCatch extends StatelessWidget {
  TextEditingController? textEditingController;
  String? hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function()? ontap;
  void Function(String)? onchanged;

  TextFCatch(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.prefix,
      required this.ontap,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 356.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: TextField(
          controller: textEditingController,
          onChanged: onchanged,
          keyboardType: textInputType,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20.w, top: 10.h),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color(0xff48505899)),
              fillColor: const Color(0xffF2F2F2),
              prefix: prefix,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              suffixIcon: GestureDetector(
                  onTap: ontap,
                  child: Image.asset(
                      'assets/images/Icon-Outline-navigation-2.png'))
              // suffixIconColor: Colors.blue
              // ignore: use_full_hex_values_for_flutter_colors
              )),
    );
  }
}

class BigTextFieldAddFeed extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  void Function(String)? onchanged;
  BigTextFieldAddFeed({
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
        height: 126.h,
        width: 356.w,
        decoration: BoxDecoration(
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

// class ReplaceBigTextField extends StatelessWidget {
//   const ReplaceBigTextField({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: ,
//     );
//   }
// }

class TextF10 extends StatefulWidget {
  TextEditingController? textEditingController;
  String? hintText;
  TextInputType? textInputType;
  Key? keyValue;
  void Function(String)? onchanged;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  TextF10(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.onSaved,
      required this.keyValue,
      required this.validator,
      required this.onchanged})
      : super(key: key);

  @override
  State<TextF10> createState() => _TextF10State();
}

class _TextF10State extends State<TextF10> {
  final instanceOtpViewModel = Get.put(RegistrationStepTwo2());

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 7.w),
        height: 56.h,
        width: 356.w,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(113, 154, 195, 0.16), width: 1),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Obx(() => GestureDetector(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode:
                      true, // optional. Shows phone code before the country name.
                  onSelect: (Country country) {
                    setState(() {
                      instanceOtpViewModel.flagEmoji.value = country.flagEmoji;
                      instanceOtpViewModel.countryText.value =
                          country.phoneCode;
                    });
                  },
                );
              },
              child: SizedBox(
                  height: 45,
                  width: 25,
                  child: instanceOtpViewModel.flagEmoji.value.isEmpty
                      ? Image.asset('assets/images/Rectangle 6.png')
                      : Center(
                          child: Text(instanceOtpViewModel.flagEmoji.value))))),
          SizedBox(width: 8.w),
          Obx(() => GestureDetector(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode:
                        true, // optional. Shows phone code before the country name.
                    onSelect: (Country country) {
                      print('Select country: ${country.displayName}');
                      setState(() {
                        instanceOtpViewModel.flagEmoji.value =
                            country.flagEmoji;
                        instanceOtpViewModel.countryText.value =
                            country.phoneCode;
                      });
                    },
                  );
                },
                child: instanceOtpViewModel.countryText.value.isNotEmpty
                    ? Text('+${instanceOtpViewModel.countryText.value}',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16.sp,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: const Color(0xff48505889),
                            fontWeight: FontWeight.normal))
                    : Text('+1',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16.sp,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: const Color(0xff48505889),
                            fontWeight: FontWeight.normal)),
              )),
          Expanded(
              child: TextFormField(
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ],
                  key: widget.keyValue,
                  onSaved: widget.onSaved,
                  validator: widget.validator,
                  controller: widget.textEditingController,
                  onChanged: widget.onchanged,
                  keyboardType: widget.textInputType,
                  maxLength: 10,
                  decoration: InputDecoration(
                    // isCollapsed: true,
                    counterText: '',
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: const Color(0xff48505899)),
                    fillColor: Colors.white,
                    // prefixIcon: prefix,
                    filled: true,
                    // contentPadding: EdgeInsets.only(left: 10.w, bottom: 5.h)))
                    // ignore: use_full_hex_values_for_flutter_colors)
                  )))
        ]));
  }
}
