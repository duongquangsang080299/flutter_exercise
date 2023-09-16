import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/routes/routes.dart';

class SCBottomNavigationBar extends StatelessWidget {
  const SCBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(context, Icons.home, 'Home', 0),
          buildNavItem(context, Icons.calendar_month, 'Fixtures', 1),
          buildNavItem(context, Icons.shop_2, 'Shop', 2),
          buildNavItem(context, Icons.airplane_ticket, 'Tickets', 3),
        ],
      ),
    );
  }

  Widget buildNavItem(
    BuildContext context,
    IconData icon,
    String label,
    int index,
  ) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        onTap(index);
        // Navigate to different pages based on the selected index
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/home');
          case 1:
            context.go(AppRoutes.fixturesPage.path);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColor.primary : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColor.primary : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
