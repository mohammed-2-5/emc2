
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/HeaderRow.dart';
import '../widgets/HomeOrganizationCard.dart';
import '../widgets/SearchBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  contentPadding:EdgeInsets.all(0),
                  title:const Text('Hi Khaled!',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),) ,
                  subtitle: const Text('We are happy with your presence!',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                  trailing: CircleAvatar(
                    child:Image.asset('assets/Ellipse 1226.jpg',height: 50,width: 50,),
                  ),
                ),
                const SizedBox(height: 15,),
               const  SearchBarWithBellIcon(),
                const SizedBox(height: 15,),

                 const HeaderRow(title:  'Organizations',),
                const SizedBox(height: 20,),
              const   Row(
                  children: [
                    Expanded(
                      child: HomeOrganizationCard(
                        logo: 'assets/Misr.jpg',
                        title: 'Logistics ',
                        logoName: 'Misr ElKher',
                        city: 'Beba',
                        time: '9:00 - 13:00',
                        date: '22/11',
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: HomeOrganizationCard(
                        logo: 'assets/img.png',
                        title: 'Collect Garbage',
                        logoName: 'Resala',
                        city: 'Beba',
                        time: '9:00 - 13:00',
                        date: '22/11',
                      ),
                    ),
                  ],
                ),
                const HeaderRow(title: 'Individuals' ,),
                const SizedBox(height: 20,),
                const   Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: HomeOrganizationCard(
                          logo: 'assets/Misr.jpg',
                          title: 'Organization 1',
                          logoName: 'Logo Name 1',
                          city: 'City 1',
                          time: '9:00 - 13:00',
                          date: '22/11',
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: HomeOrganizationCard(
                        logo: 'assets/Misr.jpg',
                        title: 'Cooking',
                        logoName: 'Misr ',
                        city: 'Beba',
                        time: '9:00 - 13:00',
                        date: '22/11',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
