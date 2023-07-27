import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Manages the _selectedIndex variable to keep track of the currently selected bottom navigation item.
  int _selectedIndex = 0;
  // To update the _selectedIndex when a navigation item is tapped.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom App Bar Example'),
      ),
      body: Center(
        child: Text('Content of Page ${_selectedIndex + 1}'),
      ),
      // It is used to create the bottom navigation bar at the bottom of the screen.
      bottomNavigationBar: BottomAppBar(
        // The shape property is set to
        shape:
            const CircularNotchedRectangle(), // which creates a circular notch in the center of the
        notchMargin:
            8.0, // Property defines the space between the floating action button and the notch.
        color: Colors.blue,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          // Which evenly spaces the navigation items within the BottomAppBar.
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //  Each IconButton widget represents a navigation item
            /* When tapped, it calls the _onItemTapped method to update 
            the _selectedIndex based on the index of the tapped item.*/
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => _onItemTapped(1),
            ),
            const SizedBox(
                width: 40.0), // Empty space to create the notch in the center
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // Centers the button at the bottom of the screen
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
