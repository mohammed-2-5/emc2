
import 'package:flutter/material.dart';

import '../../model/OrganizationDeatailsModel.dart';
import 'FormDataRow.dart';

class OrganizationCard extends StatelessWidget {
  final OrganizationDetail organizationDetail;

  const  OrganizationCard({
    super.key,
    required this.organizationDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(organizationDetail.logoPath),
                    const SizedBox(width: 20),
                    Text(
                      organizationDetail.organizationName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    FormDataRow(
                      logo: 'assets/Menu-4.svg', // Assuming this is a static asset
                      title: organizationDetail.category,
                    ),
                    const SizedBox(height: 10),
                    FormDataRow(
                      logo: 'assets/flag.svg', // Assuming this is a static asset
                      title: organizationDetail.location,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 14),
            Text(
              organizationDetail.description,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset:const  Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Donate',
                        style: TextStyle(
                          color: Color(0xff388175),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.favorite_border, color: Color(0xff388175)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
