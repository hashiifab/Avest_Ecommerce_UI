import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF), // White background
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5), // Steel Blue
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Avest',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Steel Blue
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red, // Bright Green for badge
              padding: EdgeInsets.all(6),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "messageListPage");
              },
              child: const Icon(
                Icons.chat_outlined,
                size: 30,
                color: Color(0xFF4C53A5), // Steel Blue for icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
