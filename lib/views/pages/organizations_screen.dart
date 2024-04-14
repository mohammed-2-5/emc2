
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/OrganizationDeatailsModel.dart';
import '../widgets/OrganizationsListScreen.dart';
import '../widgets/SearchFormField.dart';

class OrganizationsScreen extends StatelessWidget {
   OrganizationsScreen({super.key,});
  final List<OrganizationDetail> organizations = [
    // Add your organization details here
    OrganizationDetail(
      logoPath: 'assets/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    OrganizationDetail(
      logoPath: 'assets/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    OrganizationDetail(
      logoPath: 'assets/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    // Add as many organizations as you need
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Organizations',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SearchFormField(),
              const SizedBox(height: 24,),
              OrganizationListView(organizations: organizations),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
