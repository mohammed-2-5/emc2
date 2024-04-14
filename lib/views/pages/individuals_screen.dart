
import 'package:flutter/material.dart';

import '../../model/OrganizationItemModel.dart';
import '../widgets/HomeOrganizationCard.dart';
import '../widgets/SearchFormField.dart';

class IndividualsScreen extends StatelessWidget {
   IndividualsScreen({super.key});
  final List<OrganizationItem> items = [
    OrganizationItem(
      logo: 'assets/Misr.jpg',
      title: 'Plant',
      logoName: 'Misr ElKher',
      city: 'Beba',
      time: '9:00 - 13:00',
      date: '22/11',
    ),
    OrganizationItem(
      logo: 'assets/Misr.jpg',
      title: 'Cooking',
      logoName: 'Misr ElKher',
      city: 'Beba',
      time: '9:00 - 13:00',
      date: '22/11',
    ),OrganizationItem(
      logo: 'assets/Misr.jpg',
      title: 'Plant',
      logoName: 'Misr ElKher',
      city: 'Beba',
      time: '9:00 - 13:00',
      date: '22/11',
    ),OrganizationItem(
      logo: 'assets/Misr.jpg',
      title: 'Cooking',
      logoName: 'Misr ElKher',
      city: 'Beba',
      time: '9:00 - 13:00',
      date: '22/11',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Individuals',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SearchFormField(),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: (153 / 202), // Calculate an appropriate ratio based on your content
                  ),
                  itemCount: 4, // The number of cards in the grid
                  itemBuilder: (context, index) {
                    // Using your custom HomeOrganizationCard widget
                    return  HomeOrganizationCard(
                      logo: items[index].logo,
                      title: items[index].title,
                      logoName: items[index].logoName,
                      city: items[index].city,
                      time: items[index].time,
                      date: items[index].date,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
