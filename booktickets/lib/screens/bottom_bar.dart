import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  final int _selectedTabIndex =  0;
  static final List<Widget> _widgetOptions = <Widget> [
    const Text("Home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Tickets"),
      ),
      body: Center(
        child: _widgetOptions[_selectedTabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const[
          BottomNavigationBarItem(
            label: "Home", 
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_square_filled),
          ),
          BottomNavigationBarItem(
            label: "Tickets",
            icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
          )
        ],
      ),
    );
  }
}