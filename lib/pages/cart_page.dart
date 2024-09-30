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
          const CartAppBar(), // AppBar khusus untuk halaman Cart
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2), // Warna latar belakang abu-abu muda
            ),
            child: Column(
              children: [
                CartItemsExamples(), // Widget untuk menampilkan item di keranjang
                _buildCouponSection(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          const CartBottomNavigator(), // Bottom Navigation Bar khusus
    );
  }

  // Fungsi terpisah untuk bagian penambahan kode kupon
  Widget _buildCouponSection() {
    return Container(
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
              color: Colors.black, // Warna hitam untuk ikon
              size: 25,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Add Coupon Code',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF4682B4), // Warna Steel Blue untuk teks
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
