import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF1C1C2E),
          appBar: AppBar(
            backgroundColor: const Color(0xFF1C1C2E),
            elevation: 0,
            title: const Text('Study Tips'),
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Color(0xFFFFC107),
              labelColor: Color(0xFFFFC107),
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(text: 'Effective Tips'),
                Tab(text: 'Exam & Test'),
                Tab(text: 'Motivation Tips'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _TipsCategory(tips: [
                'Effective Study Tips',
                'Helpful Study Tips To Become A Topper',
                'Note Taking Effective Tips',
                'Study Fast In Less Time',
                'Study Smarter Not Harder',
              ]),
              _TipsCategory(tips: [
                'How to Prepare for Exams',
                'Test-Taking Strategies',
                'Last-Minute Study Hacks',
                'Time Management During Exams',
                'Avoiding Burnout Before Tests',
              ]),
              _TipsCategory(tips: [
                'Stay Motivated While Studying',
                'Build a Study Routine',
                'Overcome Procrastination',
                'Use Rewards to Stay Focused',
                'Visualize Your Academic Goals',
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _TipsCategory extends StatelessWidget {
  final List<String> tips;
  const _TipsCategory({required this.tips});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A3D),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tips[index],
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
