import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final VoidCallback onNotificationTap;
  final VoidCallback onLoginTap;

  CustomAppBar({
    required this.title,
    required this.scaffoldKey,
    required this.onNotificationTap,
    required this.onLoginTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, textAlign: TextAlign.center),
      backgroundColor: Colors.white60,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.blueAccent),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      actions: <Widget>[

        SearchBar(),
        SizedBox(width: 10,),
        IconButton(
          icon: Icon(Icons.notifications, color: Colors.green),
          onPressed: onNotificationTap,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,

          ),
          child: Text('Login', style: TextStyle(
            color: Colors.white
          ),),
          onPressed: onLoginTap,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
