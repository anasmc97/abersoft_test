import 'package:abersoft_test/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController? controller;
  String? hintext;
  bool? isPasswordField;
  bool? isNumber;
  int? maxLines;
  String? Function(String?)? validator;
  Function(String)? onChanged;
  CustomTextFormField(
      {Key? key,
      this.controller,
      this.hintext,
      this.isPasswordField = false,
      this.isNumber,
      this.validator,
      this.onChanged,
      this.maxLines = 1})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure;
  late bool isPasswordField;
  late bool isDateField;
  bool? isNumber;
  TextEditingController? controller;
  String? hintext;
  String? Function(String?)? validator;
  int? maxLines;
  Function(String)? onChanged;
  @override
  void initState() {
    isObscure = widget.isPasswordField!;
    isPasswordField = widget.isPasswordField!;
    controller = widget.controller;
    hintext = widget.hintext;
    isNumber = widget.isNumber;
    validator = widget.validator;
    onChanged = widget.onChanged;
    maxLines = widget.maxLines;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onChanged: onChanged,
      validator: validator,
      keyboardType: isNumber != null ? TextInputType.number : null,
      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: isPasswordField
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child:
                      Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
              vertical: (maxLines == 1) ? -10 : 10, horizontal: 10),
          hintText: hintext,
          hintStyle: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.normal, fontSize: 12),
          hoverColor: const Color(0xFFDEDEDE),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFDEDEDE), width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
