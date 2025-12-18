import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'notes.dart';
import 'profile.dart';
import 'tips.dart';

class MainNavigation extends StatefulWidget {
  final String name;
  const MainNavigation({super.key, required this.name});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      DashboardScreen(name: widget.name),
      const NotesScreen(),
      const TipsScreen(),
      ProfileScreen(name: widget.name),
    ];

    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C1C2E),
        selectedItemColor: const Color(0xFFFFC107),
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Tips'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String label;
  const PlaceholderScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$label screen',
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
