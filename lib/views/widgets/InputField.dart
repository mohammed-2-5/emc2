import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final bool isPasswordField;
  final IconData icon;
  final String hintLabel;
  final TextEditingController? controller;
  const InputField({
    Key? key,
    required this.label,
    this.isPasswordField = false,
    required this.icon,
    required this.hintLabel, this.controller,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPasswordField; // Set initial visibility based on isPasswordField
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: widget.controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: widget.hintLabel,
            hintStyle: const TextStyle(color: Color(0xffB9C2C0)),
            prefixIcon: Icon(widget.icon, color: Colors.grey.shade500),
            suffixIcon: widget.isPasswordField
                ? IconButton(
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey.shade500,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            )
                : null,
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
