import 'package:flutter/material.dart';
import 'package:screen_1/AboutPage.dart';
import 'package:screen_1/DashBoard%20copy.dart';
import 'package:screen_1/sign_in_screen.dart';
import 'package:screen_1/updateprofile.dart';
import 'settings_components.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsBody(),
    );
  }
}

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SettingsHeader(),
          SizedBox(height: 25),
          SettingsSection(
            title: 'Account',
            items: [
              SettingItem(
                text: 'Edit profile',
                icon: Icons.edit,
                onTap: () {
                  //print('Edit profile tapped');
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>TryPage()),
  );                      },
              ),
              SettingItem(
                text: 'Privacy',
                icon: Icons.lock_outlined,
                onTap: () {
                  print('Privacy profile tapped');
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          SettingsSection(
            title: 'Support & About',
            items: [
              SettingItem(
                text: 'Help & Support',
                icon: Icons.help_outline,
                onTap: () {
                  print('Help & Support tapped');
                },
              ),
              SettingItem(
                text: 'Terms and Policies',
                icon: Icons.description,
                onTap: () {
                  print('Terms and Policies tapped');
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>AboutPage()),
  ); 
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          SettingsSection(
            title: 'Actions',
            items: [
              SettingItem(
                text: 'Add Account',
                icon: Icons.person_add_rounded,
                onTap: () {
                  print('Add Account tapped');
                },
              ),
              SettingItem(
                text: 'Logout',
                icon: Icons.logout,
                onTap: () {
                  print('Logout tapped');
 Navigator.popUntil(context, (route) => route.isFirst,);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
            );                },
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}
