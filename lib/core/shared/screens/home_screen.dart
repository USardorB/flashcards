import 'package:flashcards/features/explore/pages/explore_page.dart';
import 'package:flashcards/features/home/presentation/pages/home_page.dart';
import 'package:flashcards/features/playground/presentation/pages/playground_page.dart';
import 'package:flashcards/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomePage(),
        const ExplorePage(),
        const PlaygroundPage(),
        const ProfilePage()
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelected,
        currentIndex: index,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            activeIcon: Icon(Icons.play_circle),
            label: 'Playground',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onSelected(value) => setState(() => index = value);
}
