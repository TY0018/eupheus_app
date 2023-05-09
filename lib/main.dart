import 'dart:ui';

import 'package:eupheus_app/explore.dart';
import 'package:eupheus_app/search.dart';
import 'package:eupheus_app/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:math';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // this widget is the root of your app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme of the app: const js means this thing will nvr change
      debugShowCheckedModeBanner: false, // remove debug banner
      theme: ThemeData(
          primaryColor: '#8C84EE'.toColor(),
          scaffoldBackgroundColor: '#FFF7E4'.toColor(),
          fontFamily: 'Nunito',
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 72.0, fontWeight: FontWeight.w800),
              bodyMedium: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
              bodySmall:
                  TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300))),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  // stateful means page can be reloaded
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0; //created a variable, put before build
  List<Widget> pages = const [
    Explore(),
    Search(), // add other pages when done
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Eupheus'),
      //   ),
      body: pages[currentPage],
      // floatingActionButton: FloatingActionButton(
      //   // dk if we want to keep
      //   onPressed: () {},
      //   child: const Icon(Icons.home),
      // ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.explore), label: 'Explore'), //explore page
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.groups), label: 'Community'),
          NavigationDestination(
              icon: Icon(Icons.sports_esports), label: 'Games'),
          NavigationDestination(icon: Icon(Icons.face), label: 'Me')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        backgroundColor: '#8C84EE'.toColor(),

      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.explore), label: 'Explore'), //explore page
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search), label: 'Search'), //search page
      //     BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.sports_esports), label: 'Games'),
      //     BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Me'),
      //   ],
      //   : (int index) {
      //     setState(() {
      //       currentPage = index;
      //     });
      //   },
      //   selectedIndex: currentPage,
      //   backgroundColor: '#8C84EE'.toColor(),
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
