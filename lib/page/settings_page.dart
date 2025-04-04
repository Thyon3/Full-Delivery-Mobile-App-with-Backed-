import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thydelivery_mobileapp/theme/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(top: 10, right: 25, left: 25),
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Text(
              'Dark Mode ',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            CupertinoSwitch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(
                  context,
                  listen: false,
                ).toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
