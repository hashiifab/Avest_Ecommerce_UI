import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Update the ItemButtomNavBar class to accept a price parameter
class ItemButtomNavBar extends StatelessWidget {
  final String price; // New parameter to accept price

  const ItemButtomNavBar(
      {super.key, required this.price}); // Constructor update

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Fix opacity
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price, // Use the passed price here
            style: const TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Action for adding to cart
            },
            icon: const Icon(
              CupertinoIcons.cart_badge_plus,
              color: Colors.white,
              size: 30,
            ),
            label: const Text(
              'Add to Cart',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
          )
        ],
      ),
    );
  }
}
