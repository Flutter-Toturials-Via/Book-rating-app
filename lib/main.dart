import 'package:flutter/material.dart';
import 'views/views.dart';

void main() {
  runApp(const BookRatingApp());
}

class BookRatingApp extends StatelessWidget {
  const BookRatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Rating',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const BooksPage(),
    );
  }
}
