import 'package:flutter/material.dart';

/// Define Bottom Navigation Bar
class SCBottomNavigationBar extends StatelessWidget {
  const SCBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // Set the currently selected index.
        currentIndex: 1,
        // Set the background color.
        backgroundColor: Theme.of(context).colorScheme.background,
        // Elevation for the navigation bar.
        elevation: 4,
        // Hide labels for selected items.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // Use a fixed layout for the navigation bar.
        type: BottomNavigationBarType.fixed,
        // Color for the selected item's icon and text.
        selectedItemColor: Theme.of(context).colorScheme.primary,
        // Color for the unselected item's icon and text.
        unselectedItemColor:
            Theme.of(context).colorScheme.primary.withOpacity(.5),
        items: const [
          // Define the navigation items using BottomNavigationBarItem.
          BottomNavigationBarItem(
            // Icon for the item.
            icon: Icon(Icons.home),
            // Text label for the item.
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Fixtures',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Tickets',
          ),
        ],
      ),
    );
  }
}
