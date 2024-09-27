import 'package:flutter/material.dart';
import 'package:ui_ecommerce/widgets/cart_app_bar.dart';
import 'package:ui_ecommerce/widgets/cart_bottom_navigator.dart';
import 'package:ui_ecommerce/widgets/cart_items_examples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(), // Custom AppBar for Cart
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2), // Light Gray for background
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              children: [
                CartItemsExamples(), // Widget displaying cart items
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 0, 0, 0), // Bright Green for the add icon
                          size: 25,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Add Coupon Code',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF4682B4), // Steel Blue for text
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          const CartBottomNavigator(), // Custom Bottom Navigation Bar
    );
  }
}
