import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 16),
          child: Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? _isHidden : false,
            decoration: InputDecoration(
              hintText: widget.label,
              hintStyle:  TextStyle(color: Colors.grey[500]),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none, // removes underline
              suffixIcon: widget.isPassword
                  ? IconButton(
                icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _isHidden = !_isHidden;
                  });
                },
              )
                  : null,
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}