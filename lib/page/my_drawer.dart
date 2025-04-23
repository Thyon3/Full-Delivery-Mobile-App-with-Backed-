import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/components/drawer_tile.dart';
import 'package:thydelivery_mobileapp/page/settings_page.dart';
import 'package:thydelivery_mobileapp/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  void goToSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  void logOut() {
    AuthService authService = AuthService();
    authService.signOut();
  }

  Widget build(context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_clock_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(25),
            child: Divider(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          DrawerTile(
            title: 'H O M E',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          DrawerTile(
            title: 'S E T T I N G S',
            icon: Icons.settings,
            onTap: () => goToSettings(context),
          ),

          Spacer(),
          DrawerTile(
            title: 'L O G O U T ',
            icon: Icons.logout,
            onTap: () {
              logOut();
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
