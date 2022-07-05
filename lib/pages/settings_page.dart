import 'package:community_app/components/settings_item.dart';

import '../components/top_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            TopAppBar(
              isIconLeft: true,
              OnChanged: () {
                Navigator.pop(context);
              },
              title: "Settings",
              icon: Icons.arrow_back,
            ),
            Flexible(
              child: ListView(
                children: [
                  SettingsItem(title: 'Theme', icon: Icons.sunny),
                  SettingsItem(title: 'Account managememnt', icon: Icons.account_box),
                  SettingsItem(title: 'Log out', icon: Icons.logout),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
