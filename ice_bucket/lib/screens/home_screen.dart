import 'package:flutter/material.dart';
import 'package:ice_bucket/widgets/app_bar.dart';
import 'package:ice_bucket/widgets/bottom_nav_bar.dart';
import 'package:ice_bucket/widgets/side_bar.dart';
import 'package:ice_bucket/widgets/login_bottom_sheet.dart';
import 'package:ice_bucket/widgets/search_bar.dart';
import 'gallery_screen.dart';
import 'contact_screen.dart';
import 'queries_screen.dart';
import 'sub_tab_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SubTabContainer(),
    GalleryScreen(),
    ContactScreen(),
    QueriesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LoginBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: 'iceBucket',
        scaffoldKey: _scaffoldKey,
        onNotificationTap: () {},
        onLoginTap: () => _showLoginBottomSheet(context),
      ),
      drawer: SideBar(),
      
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
