import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:core';
import 'package:eupheus/extensions.dart';
import 'package:eupheus/videoplayer.dart';

class CryptocurrencyPage extends StatelessWidget {
  const CryptocurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Crypto();
  }
}

class Crypto extends StatefulWidget {
  const Crypto({super.key});

  @override
  State<Crypto> createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // gives white 'canvas' page
        body: CustomScrollView(slivers: [
          // Add a floating search bar to the app
          SliverAppBar(
            pinned: true,
            backgroundColor: '#FFA183'.toColor(),
            leading: Icon(Icons.search),
            // Use a Material design search bar
            title: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Something more specific...',
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),

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
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Cryptocurrency",
                      style: TextStyle(
                          color: '#8C84EE'.toColor(),
                          fontWeight: FontWeight.w800,
                          fontSize: 25.0)));
            },
            childCount: 1,
          )),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.5,
              crossAxisCount: 2,
              crossAxisSpacing: 7.0,
              mainAxisSpacing: 7.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  
                  padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Video()));
                            },
                            clipBehavior: Clip.antiAlias,
                            style: ElevatedButton.styleFrom(
                              // minimumSize: Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                              padding: EdgeInsets.zero,
                              foregroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent
                            ),
                            child: Image.asset('images/crypto_thumbnail.png',
                            isAntiAlias: true,
                            width: double.infinity,
                            // height: double.infinity,
                            fit: BoxFit.cover),
                          ),
                        
                        FittedBox( fit: BoxFit.scaleDown,
                          child: Text(
                          'Introduction to Cryptocurrency',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: '#8C84EE'.toColor(),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700)),
                        )
                      ],
    ));
              },
              childCount: 1,
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: '#FFA183'.toColor(),
          tooltip: 'Back',
          child: Icon(Icons.arrow_back),
        ));
  }
}
