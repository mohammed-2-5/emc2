import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_bording/views/pages/edit_profile_screen.dart';
import 'package:on_bording/views/pages/settings_screen.dart'; // For Cupertino widgets

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24), // Global padding for left and right
        child: ListView(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xFF388175),
                  child: const Text('B',style: TextStyle(color: Colors.white
                  ),),
                ),
                const SizedBox(height: 24), // Spacing after the avatar
                // A method to build each ListTile with Divider
                _buildListItem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  EditProfileScreen(),
                        ));
                  },
                  icon: 'assets/images/profile.svg',
                  title: 'Edit Profile',
                  context: context,
                ),
                _buildListItem(
                  onTap: () {},
                  icon: 'assets/images/wallet.svg',
                  title: 'Wallet',
                  context: context,
                ),
                _buildListItem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ));
                  },
                  icon: 'assets/images/settings.svg',
                  title: 'Settings',
                  context: context,
                ),
                SwitchListTile(
                  activeColor:Color(0xFF388175),
                  secondary: SvgPicture.asset('assets/images/wallet.svg'),
                  title: const Text('Notifications'),
                  value: true,
                  onChanged: (bool value) {
                    // Handle notification switch toggle
                  },
                ),
                const Divider(),
                SwitchListTile(
                  activeColor:Color(0xFF388175),
                  secondary: SvgPicture.asset('assets/images/notification.svg'),
                  title: const Text('Dark Mode'),
                  value: false,
                  onChanged: (bool value) {
                    // Handle dark mode switch toggle
                  },
                ),
                const Divider(),
                ListTile(
                  leading: SvgPicture.asset('assets/images/Logout.svg'),
                  title: const Text('Log Out', style: TextStyle(color: Colors.red)),
                  onTap: () {
                    // Handle logout action
                  },
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
      {required VoidCallback onTap,
      required String icon,
      required String title,
      required BuildContext context}) {
    return Column(
      children: [
        ListTile(
          leading: SvgPicture.asset(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: onTap,
        ),
        const Divider(),
      ],
    );
  }
}
