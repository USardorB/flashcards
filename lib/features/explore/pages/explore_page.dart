import 'package:flashcards/features/explore/pages/categories_tab.dart';
import 'package:flashcards/features/explore/pages/popular_tab.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore')),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Column(
            spacing: 8,
            children: [
              const SearchBar(
                hintText: 'Search language sets...',
                leading: Icon(Icons.search),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 46,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0x15626C79),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TabBar(
                    indicatorPadding: EdgeInsets.all(4),
                    tabs: [
                      Tab(child: Text('Popular')),
                      Tab(child: Text('New')),
                      Tab(child: Text('Categires')),
                    ],
                  ),
                ),
              ),
              const Flexible(
                child: TabBarView(
                  children: [
                    PopularTab(),
                    PopularTab(),
                    CategoriesTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
