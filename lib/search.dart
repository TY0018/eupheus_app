import 'dart:math';
import 'dart:ui';
import 'package:eupheus_app/extensions.dart';
import 'package:eupheus_app/sustainability.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';

int itemCount = topicNames.length;
var topicNames = {
  '0': 'Sustainability',
  '1': 'Astrology',
  '2': 'Cooking',
  '3': 'Psychology',
  '4': 'Music',
  '5': 'Social Themes',
  '6': 'Photography',
  '7': 'Animation',
  '8': 'Travel',
  '9': 'Media',
  '10': 'Gardening',
  '11': 'Video Game Design',
  '12': 'Yoga',
  '13': 'Meditation',
  '14': 'Magic',
  '15': 'Sports',
  '16': 'Nutrition',
  '17': 'Film',
  '18': 'Coding',
  '19': 'Literature',
};
var _gridItems = topicNames.values.toList();

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: SearchBar());
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  // final List _gridItems = List.generate(itemCount, (i) => "$topicNames[i].values");

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      // Add a floating search bar to the app
      SliverAppBar(
        floating: true,
        backgroundColor:'#8C84EE'.toColor(),
        leading: Icon(Icons.search),
        // Use a Material design search bar
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
  
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
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              // generate blues with random shades
              color: Colors.amber[Random().nextInt(9) * 100],
              child: Container(
                alignment: Alignment.center,
                child: Text(_gridItems[index],
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700)),
              ),
            );
          },
          childCount: _gridItems.length,
        ),
      ),
      // scrollDirection: Axis.vertical,
      // itemCount: itemCount,
      // itemBuilder: (BuildContext context, int index) {
      //   return ListTile(
      //     title: Text('Item ${(index + 1)}'), // to change to actual topics
      //     leading: const Icon(Icons.nature),
      //     tileColor: Color.fromARGB(238, 235, 234, 198),
      //     shape: CustomRoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      //     onTap: () {
      //       debugPrint("enter topic widget");
      //     },
      //   );
      // },
    ]);
  }
}


// GridView.builder(
//         key:key,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 20.0,
//           mainAxisSpacing: 20.0,
//         ),
//         scrollDirection: Axis.vertical,
//         itemCount: itemCount,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: Text('Item ${(index + 1)}'), // to change to actual topics
//             leading: const Icon(Icons.nature),
//             tileColor: Color.fromARGB(238, 235, 234, 198),
//             shape: CustomRoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//             onTap: () {
//               debugPrint("enter topic widget");
//             },
//           );
//         },
//       )

// class CustomRoundedRectangleBorder extends RoundedRectangleBorder {
//   const CustomRoundedRectangleBorder({
//     side = BorderSide.none,
//     borderRadius = BorderRadius.zero,
//   }) : super(side: side, borderRadius: borderRadius);

//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     return Path()
//       ..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
//   }
// }