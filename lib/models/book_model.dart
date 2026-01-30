class Book {
  final String id;
  final String title;
  final String author;
  final int rating;
  final bool isRead;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.rating,
    required this.isRead,
  });

  Book copyWith({
    String? title,
    String? author,
    int? rating,
    bool? isRead,
  }) {
    final nextRating = rating ?? this.rating;
    return Book(
      id: id,
      title: title ?? this.title,
      author: author ?? this.author,
      rating: (nextRating.clamp(1, 5)).toInt(),
      isRead: isRead ?? this.isRead,
    );
  }
}
