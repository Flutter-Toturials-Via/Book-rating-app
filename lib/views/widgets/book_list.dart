import 'package:flutter/material.dart';
import '../../models/models.dart';
import 'book_item.dart';

class BookList extends StatelessWidget {
  final List<Book> books;

  const BookList({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    if (books.isEmpty) {
      return const Center(
        child: Text('No books yet. Add your first one!'),
      );
    }

    return ListView.separated(
      itemCount: books.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) => BookItem(book: books[index]),
    );
  }
}
