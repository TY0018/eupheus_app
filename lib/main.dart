import 'package:eupheus_app/explore.dart';
import 'package:eupheus_app/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}



// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {  // this widget is the root of your app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme of the app: const js means this thing will nvr change
      debugShowCheckedModeBanner: false, // remove debug banner
      theme: ThemeData(primarySwatch: Colors.purple),
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Eupheus'),
          ),
        body: pages[currentPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.home),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'), //explore page
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.groups), label: 'Community'),
            NavigationDestination(icon: Icon(Icons.sports_esports), label: 'Games'),
            NavigationDestination(icon: Icon(Icons.face), label: 'Me')
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ));
  }
}
