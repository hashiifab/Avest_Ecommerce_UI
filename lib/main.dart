import 'package:flutter/material.dart';
import 'package:ui_ecommerce/pages/cart_page.dart';
import 'package:ui_ecommerce/pages/chat_page.dart';
import 'package:ui_ecommerce/pages/login_page.dart';
import 'package:ui_ecommerce/pages/message_list_page.dart';
import 'package:ui_ecommerce/pages/home_page.dart';
import 'package:ui_ecommerce/pages/items_page.dart';
import 'package:ui_ecommerce/pages/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemsPage": (context) => ItemsPage(),
        'messageListPage': (context) => MessageListPage(),
        'chatPage': (context) => const ChatPage(),
        'registerPage': (context) => const RegisterPage(),
        'loginPage': (context) => const LoginPage(),
      },
    );
  }
}
