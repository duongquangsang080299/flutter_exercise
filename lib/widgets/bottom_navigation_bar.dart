import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/routes/routes.dart';

class SCBottomNavigationBar extends StatefulWidget {
  const SCBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  _SCBottomNavigationBarState createState() => _SCBottomNavigationBarState();
}

class _SCBottomNavigationBarState extends State<SCBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: (int index) {
        widget.onTap(index); // Call the onTap callback

        // Navigate to different pages based on the selected index
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed(
                '/home'); // Replace with your home page route
          case 1:
            context.go(
              AppRoutes.fixturesPage.path,
            ); // Replace with your business page route
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: AppColor.primary,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.business,
            color: AppColor.primary,
          ),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: AppColor.primary,
          ),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: AppColor.primary,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
