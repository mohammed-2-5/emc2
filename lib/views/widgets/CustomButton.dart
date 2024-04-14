
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 0,
              blurRadius: 2, // Shadow blur radius
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(12), // Border radius
          color: Colors.white,),
        child: TextButton(
            onPressed: () {},
            child:
            const Text(
              'Apply',
              style: TextStyle(
                color: Color(
                    0xff388175), // Change the color to match your design
              ),
            )),
      ),
    );
  }
}
