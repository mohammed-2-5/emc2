import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

      ),
      child: FloatingActionButton(
        shape: const CircleBorder(),

        onPressed:onPressed, // Larger icon based on the design
        backgroundColor: Colors.white, // Add your onPressed code here!
        child: const Icon(Icons.add, size: 30,color: Color(0xff388175),), // Color based on the image
      ),
    );
  }
}
