import 'package:flashcards/core/extensions/build_context.dart';
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
          padding: EdgeInsets.all(context.fromHeight(16.0)),
          child: Column(
            children: [
              const SearchBar(
                hintText: 'Search language sets...',
                leading: Icon(Icons.search),
              ),
              context.toHeight(24),
              SizedBox(
                height: context.fromHeight(46),
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
              context.toHeight(8),
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
