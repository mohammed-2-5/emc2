
import 'package:flutter/material.dart';

import 'CardFormData.dart';
import 'CustomButton.dart';
import 'LogoRow.dart';

class HomeOrganizationCard extends StatelessWidget {
  const HomeOrganizationCard({super.key, required this.logo, required this.title, required this.logoName, required this.city, required this.time, required this.date});
  final String logo;
  final String title;
  final String logoName;
  final String city;
  final String time;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Set the borderRadius to 15
      ),
      elevation: 1,
      color: Colors.white,
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoRow(logo: logo,logoName: logoName,),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
            const SizedBox(
              height: 5,
            ),
            CardFormData(city: city, time:time, date: date,),
            const SizedBox(
              height: 10,
            ),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}
