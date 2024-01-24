class BookModel {
  final String title;
  final String author;
  bool isFavorite;
  final List<ChapterModel> chapter;
  final Map<String, dynamic> meta;

  BookModel({
    required this.title,
    required this.author,
    required this.chapter,
    required this.meta,
    this.isFavorite = false,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
        title: json['title'],
        author: json['author'],
        chapter: json['content'],
        meta: json['meta'],
        isFavorite: json['isFavorite']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'content': chapter,
      'meta': meta,
      'isFavorite': isFavorite,
    };
  }
}

class ChapterModel {
  final String title;
  final String content;
  final Map<String, dynamic> meta;

  ChapterModel({
    required this.title,
    required this.content,
    required this.meta,
  });

  factory ChapterModel.fromJson(Map<String, dynamic> json) {
    return ChapterModel(
      title: json['title'],
      content: json['content'],
      meta: json['meta'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'meta': meta,
    };
  }
}
