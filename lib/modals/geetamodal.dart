class GeetaModal {
  final String text;
  final int chapter_id;
  final int verse_order;

  GeetaModal({
    required this.text,
    required this.chapter_id,
    required this.verse_order,
  });

  factory GeetaModal.fromMap({required Map data}) {
    return GeetaModal(
      chapter_id: data['chapter_id'],
      verse_order: data['verse_order'],
      text: data['text'],
    );
  }
}

class GeetaModal2 {
  final String lang;
  final String title;
  final String description;
  final int verseNumber;

  GeetaModal2({
    required this.description,
    required this.verseNumber,
    required this.lang,
    required this.title,
  });

  factory GeetaModal2.fromMap({required Map data}) {
    return GeetaModal2(
      description: data['description'],
      verseNumber: data['verseNumber'],
      lang: data['lang'],
      title: data['title'],
    );
  }
}
