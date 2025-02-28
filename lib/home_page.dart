import 'package:flutter/material.dart';
import 'gradient_widget.dart'; // Import the Gradient widget
import 'signin_page.dart'; // Import the Sign-In page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1; // Home is the default selected tab

  // Placeholder pages
  final List<Widget> _pages = [
    const Placeholder(), // Dashboard (Empty for now)
    const HomeContent(), // Home content with inventory buttons
    const Placeholder(), // Sells (Empty for now)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChocoShop Inventory'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Log out and go back to SignInPage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignInPage()),
              );
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Switch content based on selected tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Sells',
          ),
        ],
      ),
    );
  }
}

// Separate Home Content Widget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Manage Your Inventory',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Inventory Management Buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildHomePageButton(
                    icon: Icons.inventory,
                    label: 'Stock',
                    onPressed: () {
                      // Navigate to Stock Page
                    },
                  ),
                  _buildHomePageButton(
                    icon: Icons.card_giftcard,
                    label: 'Packages',
                    onPressed: () {
                      // Navigate to Packages Page
                    },
                  ),
                  _buildHomePageButton(
                    icon: Icons.shopping_cart,
                    label: 'Orders',
                    onPressed: () {
                      // Navigate to Orders Page
                    },
                  ),
                  _buildHomePageButton(
                    icon: Icons.people,
                    label: 'Customers',
                    onPressed: () {
                      // Navigate to Customers Page
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Button Widget for Different Inventory Actions
  Widget _buildHomePageButton({
    required IconData icon,
    required String label,
    required void Function() onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 40),
      label: Text(label, style: const TextStyle(fontSize: 16)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        backgroundColor: const Color.fromARGB(255, 236, 236, 236), // Choco color for button background
        foregroundColor: const Color.fromARGB(255, 26, 26, 26), // Set the color of icon and text to white
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
