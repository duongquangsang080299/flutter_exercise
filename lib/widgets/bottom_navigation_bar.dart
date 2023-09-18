import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soccer_club_app/core/color/app_color.dart';
import 'package:soccer_club_app/core/constant/icons.dart';
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
          buildNavItem(
            context,
            icon: SvgPicture.asset(
              SCIcons.calender,
              color: currentIndex == 0 ? AppColor.primary : AppColor.tertiary,
            ),
            label: 'News',
            index: 0,
          ),
          buildNavItem(
            context,
            icon: SvgPicture.asset(
              SCIcons.fixtures,
              color: currentIndex == 1 ? AppColor.primary : AppColor.tertiary,
            ),
            label: 'Fixtures',
            index: 1,
          ),
          buildNavItem(
            context,
            icon: SvgPicture.asset(
              SCIcons.shop,
              color: currentIndex == 2 ? AppColor.primary : AppColor.tertiary,
            ),
            label: 'Shop',
            index: 2,
          ),
          buildNavItem(
            context,
            icon: SvgPicture.asset(
              SCIcons.tickets,
              color: currentIndex == 3 ? AppColor.primary : AppColor.tertiary,
            ),
            label: 'Tickets',
            index: 3,
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(
    BuildContext context, {
    required Widget icon,
    required String label,
    required int index,
  }) {
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
          // Add cases for other indices as needed
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColor.primary : AppColor.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
