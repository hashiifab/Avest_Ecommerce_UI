import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, dynamic>> _messages = [
    {"message": "Hi! How can I help you?", "isMe": false, "time": "10:00 AM"},
    {
      "message": "I have a question about the product.",
      "isMe": true,
      "time": "10:01 AM"
    },
    {"message": "Sure, feel free to ask.", "isMe": false, "time": "10:02 AM"},
  ];

  final TextEditingController _messageController = TextEditingController();

  // Function to handle sending messages
  void _sendMessage() {
    String text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({"message": text, "isMe": true, "time": "Now"});
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Support",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            centerTitle: true,
        backgroundColor: const Color(0xFF001F3F), // Steel Blue for the app bar
        elevation: 0, // Flat app bar for a modern look
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the back button color here
          
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessageItem(_messages[index]);
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  // Widget to build individual chat message bubbles
  Widget _buildMessageItem(Map<String, dynamic> message) {
    bool isMe = message['isMe'];
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: isMe
              ? const Color(0xFF001F3F)
              : const Color(
                  0xFFD3D3D3), // Bright Green for sent messages and Light Gray for received messages
          borderRadius: BorderRadius.circular(20), // More rounded corners
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message['message'],
              style: TextStyle(
                color: isMe ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              message['time'],
              style: TextStyle(
                color: isMe ? Colors.white70 : Colors.black54,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build the text input area
  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: "Type your message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200], // Light gray for the input field
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15), // More padding for a spacious feel
              ),
            ),
          ),
          const SizedBox(width: 8), // Space between input and send button
          IconButton(
            onPressed: _sendMessage,
            icon: const Icon(Icons.send,
                color: Color(0xFF001F3F)), // Steel Blue for the send button
            padding: EdgeInsets.zero, // Remove default padding
            constraints: const BoxConstraints(), // Remove constraints for icon button
          ),
        ],
      ),
    );
  }
}
