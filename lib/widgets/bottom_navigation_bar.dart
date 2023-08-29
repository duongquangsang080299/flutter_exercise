import 'package:flutter/material.dart';
import 'package:soccer_club_app/widgets/icon.dart';

/// Defince Bottom Navigation Bar
class SCBottomNavigationBar extends StatefulWidget {
  /// Constructor for the custom bottom navigation bar.
  const SCBottomNavigationBar({super.key});

  @override
  State<SCBottomNavigationBar> createState() => _SCBottomNavigationBarState();
  // Create the state associated with the custom bottom navigation bar.
}

class _SCBottomNavigationBarState extends State<SCBottomNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    // List of widgets corresponding to each navigation item.
  ];
  // Callback function when a navigation item is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Update the selected index when a navigation item is tapped.
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      // Display the selected widget from the list.
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // Set the currently selected index.
        currentIndex: _selectedIndex,
        // Function called when a navigation item is tapped.
        onTap: _onItemTapped,
        // Set the background color.
        backgroundColor: Theme.of(context).colorScheme.background,
        // Elevation for the navigation bar.
        elevation: 10,
        // Hide labels for selected items.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // Use a fixed layout for the navigation bar.
        type: BottomNavigationBarType.fixed,
        // Color for the selected item's icon and text.
        selectedItemColor: theme.colorScheme.primary,
        // Color for the unselected item's icon and text.
        unselectedItemColor: theme.colorScheme.primary.withOpacity(.5),
        items: [
          /// Define the navigation items using BottomNavigationBarItem.
          BottomNavigationBarItem(
            // Custom icon using SCIcon widget
            icon: SCIcon.home(),
            // Active icon
            activeIcon: Icon(SCIcon.home() as IconData?),
            // Text label for the item
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: SCIcon.fixtures(),
            activeIcon: Icon(SCIcon.fixtures() as IconData?),
            label: 'Fixtures',
          ),
          BottomNavigationBarItem(
            icon: SCIcon.shop(),
            activeIcon: Icon(SCIcon.shop() as IconData?),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SCIcon.tickets(),
            activeIcon: Icon(SCIcon.tickets() as IconData?),
            label: 'Tickets',
          ),
        ],
      ),
    );
  }
}
