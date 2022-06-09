import 'package:flutter/material.dart';
import 'package:insta_ui/constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  void onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      iconSize: 26,
      onTap: onTap,
      backgroundColor: Colors.transparent,
      elevation: 0,
      unselectedItemColor: Colors.grey.shade400,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: btnColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          activeIcon: Icon(Icons.home_rounded),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline),
          label: "Inbox",
          activeIcon: Icon(Icons.mail),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: "Saved",
          activeIcon: Icon(Icons.bookmark),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: "Info",
          activeIcon: Icon(Icons.person),
        ),
      ],
    );
  }
}
