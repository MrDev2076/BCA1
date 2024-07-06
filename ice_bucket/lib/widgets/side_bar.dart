import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Sudharshan Nadipalli'),
            accountEmail: Text('sudharshan@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text('My Sessions'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.collections),
            title: Text('My Collections'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
