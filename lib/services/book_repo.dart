import 'package:e_hadid_book_list/models/book_model.dart';

class BookRepo {
  BookModel getMockBook() {
    return BookModel(
      title: 'Sahih Al-Bukhari',
      author: 'Umar bin Al-Khattab',
      chapter: [
        ChapterModel(
            title: '1. Revelation',
            content:
                'I heard Allah\'s Messenger (ﷺ) saying, "The reward of deeds depends upon the intentions and every person will get the reward according to what he has intended. So whoever emigrated for worldly benefits or for a woman to marry, his emigration was for what he emigrated for."',
            meta: {})
      ],
      meta: {
        'Reference': 'Sahih al-Bukhari 1',
        'In-book reference': 'Book 1, Hadith 1',
        'USC-MSA': 'Vol. 1, Book 1, Hadith 1',
      },
    );
  }
}
