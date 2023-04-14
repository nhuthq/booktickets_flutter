import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedTabIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketsScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

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
        currentIndex: _selectedTabIndex,
        onTap: _onItemTapped,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(FluentIcons.home_20_regular),
            activeIcon: Icon(FluentIcons.home_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(FluentIcons.search_20_regular),
            activeIcon: Icon(FluentIcons.search_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Tickets",
            icon: Icon(FluentIcons.airplane_20_regular),
            activeIcon: Icon(FluentIcons.airplane_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(FluentIcons.person_20_regular),
            activeIcon: Icon(FluentIcons.person_20_filled),
          )
        ],
      ),
    );
  }
}
