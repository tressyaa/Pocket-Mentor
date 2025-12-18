import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  const ProfileScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C2E),
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xFFFFC107),
                  child: Icon(Icons.person, color: Color(0xFF1C1C2E), size: 32),
                ),
                const SizedBox(width: 16),
                Text(
                  name.isNotEmpty ? name : '[inputname]',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            _ProfileAction(label: 'Create Full Account', onTap: () {}),
            _ProfileAction(label: 'Help', onTap: () {}),
            _ProfileAction(label: 'Support', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class _ProfileAction extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _ProfileAction({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A3D),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Icon(Icons.arrow_forward_ios,
                color: Colors.white54, size: 18),
          ],
        ),
      ),
    );
  }
}
