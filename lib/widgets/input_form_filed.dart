import 'package:flutter/material.dart';

class InputFormFiled extends StatefulWidget {
  const InputFormFiled({
    super.key,
    required this.text,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    required this.icons,
    this.onChange,
    this.textEditingController,
    this.suffix,
  });
  final String text;
  final bool isPassword;
  final TextInputType textInputType;
  final IconData icons;
  final ValueChanged<String>? onChange;
  final TextEditingController? textEditingController;
  final Widget? suffix;

  @override
  State<InputFormFiled> createState() => _InputFormFiledState();
}

class _InputFormFiledState extends State<InputFormFiled> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      onChanged: widget.onChange,
      obscuringCharacter: '*',
      obscureText: widget.isPassword ? hidden : false,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        labelText: widget.text,
        suffix: widget.suffix,
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1.3),
        ),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    hidden = !hidden;
                  });
                },
                child: widget.isPassword
                    ? Icon(
                        hidden
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye_outlined,
                      )
                    : null,
              )
            : null,
        prefixIcon: Icon(widget.icons),
      ),
    );
  }
}
