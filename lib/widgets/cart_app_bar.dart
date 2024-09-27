import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // Back Button
          InkWell(
            onTap: () {
              // Navigate back to the previous page
              Navigator.restorablePushNamed(context, '/');
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF001F3F),
            ),
          ),
          // Title
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          // More Options Icon
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xFF001F3F),
          ),
        ],
      ),
    );
  }
}
