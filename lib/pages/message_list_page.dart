import 'package:flutter/material.dart';
import 'chat_page.dart'; // Import halaman detail chat

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Chat',
      theme: ThemeData(
        primaryColor: const Color(
            0xFF001F3F), // This will be replaced by specific colors in widgets
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF001F3F)), // Default text color
        ),
      ),
      routes: {
        '/': (context) => MessageListPage(),
        'chatPage': (context) => const ChatPage(),
      },
    );
  }
}

class MessageListPage extends StatelessWidget {
  final List<Map<String, dynamic>> _conversations = [
    {
      "name": "Customer Support",
      "lastMessage": "Sure, feel free to ask.",
      "time": "10:02 AM",
      "unreadCount": 2,
    },
    {
      "name": "Seller ABC",
      "lastMessage": "Your order has been shipped.",
      "time": "Yesterday",
      "unreadCount": 0,
    },
    {
      "name": "Seller XYZ",
      "lastMessage": "Thank you for your purchase!",
      "time": "2 days ago",
      "unreadCount": 1,
    },
  ];

  MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messages",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF001F3F), // Steel Blue for a cooler app bar
        elevation: 0, // No shadow for a cleaner look
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the back button color here
        ),
      ),
      body: ListView.builder(
        itemCount: _conversations.length,
        itemBuilder: (context, index) {
          return _buildConversationItem(_conversations[index], context);
        },
      ),
    );
  }

  Widget _buildConversationItem(
      Map<String, dynamic> conversation, BuildContext parentContext) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      elevation: 2, // Subtle elevation for depth
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF001F3F), // Steel Blue for avatar
          child: Text(
            conversation["name"][0],
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          conversation["name"],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          conversation["lastMessage"],
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
              color: Colors.black54), // Softer text color for subtitle
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              conversation["time"],
              style: TextStyle(color: Colors.grey[600]), // Softer time color
            ),
            if (conversation["unreadCount"] > 0)
              Container(
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red, // Bright Green for the badge
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "${conversation['unreadCount']}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(parentContext, "chatPage");
        },
      ),
    );
  }
}
