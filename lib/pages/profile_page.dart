import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF001F3F), // Steel Blue
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile header section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF001F3F), // Steel Blue
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://www.w3schools.com/w3images/avatar2.png', // Profile image from W3Schools
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Hashiifab",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "hash@example.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Profile options in a modern style
            Column(
              children: [
                _buildProfileOption(
                  icon: Icons.edit,
                  label: "Edit Profile",
                  onTap: () {
                    // Edit profile action
                  },
                ),
                _buildProfileOption(
                  icon: Icons.lock,
                  label: "Change Password",
                  onTap: () {
                    // Change password action
                  },
                ),
                _buildProfileOption(
                  icon: Icons.settings,
                  label: "Settings",
                  onTap: () {
                    // Settings action
                  },
                ),
                _buildProfileOption(
                  icon: Icons.notifications,
                  label: "Notifications",
                  onTap: () {
                    // Notifications action
                  },
                ),
                _buildProfileOption(
                  icon: Icons.help_outline,
                  label: "Help & Support",
                  onTap: () {
                    // Help action
                  },
                ),
                _buildProfileOption(
                  icon: Icons.logout,
                  label: "Logout",
                  onTap: () {
                    // Logout action
                    Navigator.pushReplacementNamed(context, 'registerPage');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to build profile option widget
  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        
      ),
      elevation: 4, // Slightly higher elevation for a modern look
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFF001F3F), // Steel Blue
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87, // Darker text for better contrast
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios,
            size: 16,
            color: Color(0xFF001F3F)), // Steel Blue for the arrow icon
        onTap: onTap,
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false, // Disables the debug banner
    ));
