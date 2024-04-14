
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FormDataRow.dart';

class LogoRow extends StatelessWidget {
  const LogoRow({
    super.key, required this.logo, required this.logoName,
  });
  final String logo;
  final String logoName;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the size of the logo based on the screen width
        double maxWidth = constraints.maxWidth * 0.25; // Example: logo can take up to 15% of the width
        double size = maxWidth < 50.0 ? maxWidth : 50.0; // Ensures the logo does not exceed 50 units

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logo,
              height: size, // Use the responsive size
              width: size,  // Use the responsive size
            ),
            Text(
              logoName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: responsiveFontSize(context, 13), // Use the responsive font function
              ),
            ),
          ],
        );
      },
    );
  }
}


