# Flutter Book Rating Application - Assignment 1

## Assignment Overview

Create a Flutter application that allows users to manage and rate their book collection. This assignment will help you learn state management, basic CRUD operations, and proper Flutter project structure.

---

## Project Structure

Organize your project following this structure:

```
lib/
├── main.dart
├── models/
│   ├── models.dart         
│   └── book_model.dart      
├── views/
│   ├── views.dart           
│   ├── books_page.dart      
│   └── widgets/
│       ├── book_item.dart   
│       ├── book_list.dart   
│       └── the rest (whatever you prefer)
```

---

## Book Model

Create a simple Book class with these properties:

```dart
// lib/models/book_model.dart

class Book {
  final String id;
  final String title;
  final String author;
  final int rating;  // 1-5 stars
  final bool isRead;
  
  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.rating,
    required this.isRead,
  });
}
```

**Note**: You will need to implement additional methods as needed (like creating a copy of the book with updated values).

---

## Assignment Stages

### Stage 1: Basic UI 

**Requirements:**
- Create input fields at the top of the screen for book title and author
- Display a list of books below
- Each book item should show:
  - Book title
  - Author name
  - Rating stars (visual display)
  - Read/Unread status

**Helper Widget - Rating Display:**
```dart
// Simple way to show stars
Row(
  children: List.generate(5, (index) {
    return Icon(
      index < book.rating ? Icons.star : Icons.star_border,
      color: Colors.amber,
    );
  }),
)
```

**Basic Input Field:**
```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Book Title',
    border: OutlineInputBorder(),
  ),
)
```

---

### Stage 2: State Management 

Implement these four functions in your `books_page.dart`:

#### 1. Add Book Function
- Add a new book to the list
- Generate a unique ID (hint: use `DateTime.now().millisecondsSinceEpoch.toString()`)
- Clear input fields after adding

#### 2. Delete Book Function  
- Remove a book from the list by its ID

#### 3. Edit Rating Function
- Update the rating of an existing book
- Make stars clickable to change rating

#### 4. Toggle Read Status Function
- Change a book's read/unread status
- Show visual difference for read books (e.g., strikethrough text or different color)

**State Management Hint:**
```dart
class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  List<Book> books = [];
  
  void addBook(String title, String author) {
    setState(() {
      // Your implementation here
    });
  }
  
  void deleteBook(String id) {
    setState(() {
      // Your implementation here
    });
  }
  
  void updateRating(String id, int newRating) {
    setState(() {
      // Your implementation here
    });
  }
  
  void toggleReadStatus(String id) {
    setState(() {
      // Your implementation here
    });
  }
}
```

---

### Stage 3: Filtering - Optional Bonus 

Add filtering capabilities:
- Filter by read/unread status
- Filter by minimum rating
- Search by title or author

**Simple Filter Example:**
```dart
// Filter books that are read
List<Book> readBooks = books.where((book) => book.isRead).toList();

// Filter books with 4+ stars
List<Book> highRatedBooks = books.where((book) => book.rating >= 4).toList();
```

---

## Useful Flutter Widgets

### For Input
- `TextField` - Text input
- `ElevatedButton` - Action buttons
- `IconButton` - Icon-based buttons

### For Display
- `ListView.builder` - Scrollable list
- `Card` - Material design card
- `ListTile` - Pre-structured list item
- `Icon` - Icons
- `Text` - Text display

### For Layout
- `Column` - Vertical arrangement
- `Row` - Horizontal arrangement
- `Expanded` - Fill available space
- `Padding` - Add spacing
- `SizedBox` - Fixed spacing

### For Interaction
- `GestureDetector` - Detect taps
- `InkWell` - Tap with ripple effect

---

## Tips for Success

1. **Start Simple**: Get Stage 1 working with hardcoded data first
2. **Test Frequently**: Run your app after each major change
3. **Use setState()**: Remember to wrap state changes in setState()
4. **Handle Empty States**: Show a message when no books are in the list
5. **Validate Input**: Check if title and author are not empty before adding

## Resources

### Essential Documentation
- [Flutter Widgets Catalog](https://docs.flutter.dev/development/ui/widgets)
- [Flutter Layouts](https://docs.flutter.dev/development/ui/layout)
- [Adding Interactivity](https://docs.flutter.dev/development/ui/interactive)

### Dart Language
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Dart Lists](https://dart.dev/guides/libraries/library-tour#collections)

### Helpful Tutorials
- [Building Layouts Tutorial](https://docs.flutter.dev/development/ui/layout/tutorial)
- [Write Your First Flutter App](https://docs.flutter.dev/get-started/codelab)
- [Flutter State Management (setState)](https://docs.flutter.dev/development/ui/interactive#managing-state)

### Common List Operations in Dart
```dart
// Add to list
myList.add(item);

// Remove from list
myList.removeWhere((item) => item.id == targetId);

// Find index
int index = myList.indexWhere((item) => item.id == targetId);

// Update item at index
myList[index] = newItem;

// Filter list
List filtered = myList.where((item) => condition).toList();
```

---

## Important notes

1. Include a README file with your overall description of the project
2. Feel free to use AI as helper, not as a replacement for your code



## Git Submission Guide

You will submit your assignment to our class repository by creating your own branch. Follow these steps carefully:

### Step 1: Clone the Repository
```bash
git clone [repository-url]
cd [repository-name]
```

### Step 2: Create Your Personal Branch
Create a new branch with your name (use firstname-lastname format):
```bash
git checkout -b firstname-lastname
```

Example:
```bash
git checkout -b john-smith
```

### Step 3: Add Your Code
1. Copy your entire Flutter project into the repository folder
2. Make sure all your files are included (lib folder, pubspec.yaml, etc.)

### Step 4: Commit Your Changes
```bash
git add .
git commit -m "Assignment submission by [Your Name]"
```

### Step 5: Push Your Branch
Push your branch to the remote repository:
```bash
git push origin firstname-lastname
```

### Important Git Rules
- **NEVER push to the main branch**
- Use only lowercase letters and hyphens in your branch name
- Make sure your branch name matches exactly: `firstname-lastname`
- Do not merge your branch with main
- Do not modify or delete other students' branches

### Verify Your Submission
After pushing, verify your submission:
1. Go to the repository on GitHub/GitLab
2. Check that your branch appears in the branches list
3. Confirm all your files are present in your branch

### Troubleshooting Common Issues

**If you get a "permission denied" error:**
- Make sure you have access to the repository
- Check if you're using the correct credentials

**If you accidentally committed to main:**
```bash
git reset --hard HEAD~1
git checkout -b firstname-lastname
git add .
git commit -m "Assignment submission by [Your Name]"
git push origin firstname-lastname
```

**To update your submission (before deadline):**
```bash
git checkout firstname-lastname
# Make your changes
git add .
git commit -m "Updated submission by [Your Name]"
git push origin firstname-lastname
```

### Submission Checklist
- [ ] Created branch with correct name format (firstname-lastname)
- [ ] All project files are included
- [ ] Code runs without errors
- [ ] Pushed to correct branch (NOT main)
- [ ] Verified on GitHub/GitLab that branch exists with your code


## Questions?

If you have questions about the assignment feel free to ask


Best regards
Alireza

Good luck! 

