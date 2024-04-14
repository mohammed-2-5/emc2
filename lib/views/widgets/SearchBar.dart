import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SearchFormField.dart';

class SearchBarWithBellIcon extends StatelessWidget {
  const SearchBarWithBellIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SearchFormField(),
        ),
        const SizedBox(width: 8), // Spacing between search bar and bell icon
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200, // Assuming a white background
            borderRadius: BorderRadius.circular(15.0), // Adjust for roundness
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Light shadow
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4), // Adjust offset for vertical positioning
              ),
            ],
          ),
          child: IconButton(

            icon: SvgPicture.asset('assets/alert.svg'), // Bell icon
            onPressed: () {
              // Notification bell logic
            },
          ),
        ),
      ],
    );
  }
}
