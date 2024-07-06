import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.lightBlueAccent,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.red : Colors.blueAccent),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_library, color: currentIndex == 1 ? Colors.red : Colors.green),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_mail, color: currentIndex == 2 ? Colors.red : Colors.purple),
          label: 'Contact Us',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer, color: currentIndex == 3 ? Colors.red : Colors.yellow),
          label: 'Queries',
        ),
      ],
    );
  }
}
