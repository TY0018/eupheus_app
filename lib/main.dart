import 'package:eupheus_app/me.dart';
import 'package:eupheus_app/explore.dart';
import 'package:eupheus_app/search.dart';
import 'package:eupheus_app/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
          // primaryColor: '#8C84EE'.toColor(), //purple
          primaryColor: '#FFA183'.toColor(), //peach
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
    Search(),
    MyAccount(), // add other pages when done
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],

      bottomNavigationBar: NavigationBar(
        height: 60.0,
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
        backgroundColor: '#FFA183'.toColor(),
        indicatorColor: Colors.white,
        animationDuration: const Duration(seconds: 3),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),

      
    );
  }
}
