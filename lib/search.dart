import 'dart:math' as math;
import 'dart:core';


import 'package:eupheus_app/extensions.dart';
import 'package:eupheus_app/sustainability.dart';
import 'package:flutter/material.dart';


int itemCount = topicNames.length;
var topicNames = {
  'nature' : 'Sustainability',
  'rocket_launch': 'Astrology',
  'dinner_dining': 'Cooking',
  'psychology_alt': 'Psychology',
  'music_note': 'Music',
  'location_city': 'Social Themes',
  'photo_camera': 'Photography',
  'animation': 'Animation',
  'travel_explore': 'Travel',
  'perm_media': 'Media',
  'emoji_nature': 'Gardening',
  'videogame_asset': 'Video Game Design',
  'emoji_emotions': 'Comedy',
  'self_improvement': 'Meditation',
  'auto_fix_normal': 'Magic',
  'surfing': 'Surfing',
  'egg_alt': 'Nutrition',
  'theaters': 'Film',
  'hevc': 'Coding',
  'book': 'Literature',
};

var topicIcons = {
  'nature' : Icons.nature,
  'rocket_launch': Icons.rocket_launch,
  'dinner_dining': Icons.dinner_dining,
  'psychology_alt': Icons.psychology_alt,
  'music_note': Icons.music_note,
  'location_city': Icons.location_city,
  'photo_camera': Icons.photo_camera,
  'animation': Icons.animation,
  'travel_explore': Icons.travel_explore,
  'perm_media': Icons.perm_media,
  'emoji_nature': Icons.emoji_nature,
  'videogame_asset': Icons.videogame_asset,
  'emoji_emotions': Icons.emoji_emotions,
  'self_improvement': Icons.self_improvement,
  'auto_fix_normal': Icons.auto_fix_normal,
  'surfing': Icons.surfing,
  'egg_alt': Icons.egg_alt,
  'theaters': Icons.theaters,
  'hevc': Icons.hevc,
  'book': Icons.book,
};



var _gridTopics = topicNames.values.toList();

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar();
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  

  @override

  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      // Add a floating search bar to the app
      SliverAppBar(
        pinned: true,
        backgroundColor:'#8C84EE'.toColor(),
        leading: Icon(Icons.search),
        // Use a Material design search bar
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Exploring next...',
  
            hintStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color:Colors.white),
            // Add a clear button to the search bar
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              onPressed: () => _searchController.clear(),
            ),
          ),
        ),
      ),

      SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 20.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.6),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Icon(topicIcons.values.elementAt(index)), Text(_gridTopics[index],
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700))],
              ),
            );
          },
          childCount: itemCount,
        ),
      ),
    ]);
  }}



