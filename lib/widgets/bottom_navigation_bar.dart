import 'package:flutter/material.dart';


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
    // You need to populate this list with actual widgets.
    
  ];
  void homeTapped(int index) {
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
        onTap: homeTapped,
        // Set the background color.
        backgroundColor: Theme.of(context).colorScheme.background,
        // Elevation for the navigation bar.
        elevation: 10,
        // Hide labels for selected items.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: theme.colorScheme.primary.withOpacity(.5),
        items: const [
          BottomNavigationBarItem(
           icon: Icon(Icons.tiktok),
            activeIcon: Icon(Icons.tiktok),
            label: 'News',
          ),
          BottomNavigationBarItem(
           icon: Icon(Icons.tiktok),
            activeIcon: Icon(Icons.tiktok),
            label: 'Fixtures',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tiktok),
            activeIcon: Icon(Icons.tiktok),
            label: 'Shop',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.tiktok),
            activeIcon: Icon(Icons.tiktok),
            label: 'Tickets',
          ),
        ],
      ),
    );
  }
}
