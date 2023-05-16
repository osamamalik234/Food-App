import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.baseColor,
      child: ListView(
        children: const [
          DrawerHeader(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/myPic2.JPG'),
              radius: 20,
            ),
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Help Center',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Home Delivery',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.delivery_dining_rounded,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Login or Sign Up',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.login_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
