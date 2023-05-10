// import 'dart:convert';

// import 'package:flutter/services.dart';

// class SearchResults {
//   String keyword;
//   String autocompleteterm;


//   SearchResults({
//     this.keyword,
//     this.autocompleteterm,
//   });

//   factory SearchResults.fromJson(Map<String, dynamic> parsedJson) {
//     return SearchResults(
//         keyword: parsedJson['keyword'] as String,
//         autocompleteterm: parsedJson['autocompleteTerm'] as String,
//     );
//   }
// }

// class SearchViewModel {
//   static List<SearchResults> searchresults;

//   static Future loadPlayers() async {
//     try {
//       searchresults = new List<SearchResults>();
//       String jsonString = await rootBundle.loadString('assets/searchresults.json');
//       Map parsedJson = json.decode(jsonString);
//       var categoryJson = parsedJson['searchresults'] as List;
//       for (int i = 0; i < categoryJson.length; i++) {
//         searchresults.add(new SearchResults.fromJson(categoryJson[i]));
//       }
//     } catch (e) {
//       print(e);
//     }
//   }