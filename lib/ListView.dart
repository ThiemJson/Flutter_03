import 'package:flutter/material.dart';

/*class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

*//*class _RandomWordsState extends State<RandomWords> {
  final _biggerFont = TextStyle(fontSize: 18);
  final _suggestions = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: *//**//*1*//**//* (context, i) {
          if (i.isOdd) return Divider(); *//**//*2*//**//*

          final index = i ~/ 2; *//**//*3*//**//*
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); *//**//*4*//**//*
          }
          return _buildRow(_suggestions[index]);
        });
  }
}*/
