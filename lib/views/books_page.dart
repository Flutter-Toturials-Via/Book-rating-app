import 'package:flutter/material.dart';
import '../models/models.dart';
import 'widgets/book_list.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();

  final List<Book> _books = [
    const Book(
      id: '1',
      title: 'The Pragmatic Programmer',
      author: 'Andrew Hunt',
      rating: 5,
      isRead: true,
    ),
    const Book(
      id: '2',
      title: 'Clean Code',
      author: 'Robert C. Martin',
      rating: 4,
      isRead: false,
    ),
    const Book(
      id: '3',
      title: 'Atomic Habits',
      author: 'James Clear',
      rating: 3,
      isRead: true,
    ),
  ];

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Book Ratings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Book Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(
                labelText: 'Author',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BookList(books: _books),
            ),
          ],
        ),
      ),
    );
  }
}
