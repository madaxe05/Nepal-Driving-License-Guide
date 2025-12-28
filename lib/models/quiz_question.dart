class QuizQuestion {
  final String id;
  final String questionEn;
  final String questionNp;
  final List<String> optionsEn;
  final List<String> optionsNp;
  final int correctIndex;
  final String explanationEn;
  final String explanationNp;
  final String category;

  QuizQuestion({
    required this.id,
    required this.questionEn,
    required this.questionNp,
    required this.optionsEn,
    required this.optionsNp,
    required this.correctIndex,
    required this.explanationEn,
    required this.explanationNp,
    required this.category,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['id'],
      questionEn: json['questionEn'],
      questionNp: json['questionNp'],
      optionsEn: List<String>.from(json['optionsEn']),
      optionsNp: List<String>.from(json['optionsNp']),
      correctIndex: json['correctIndex'],
      explanationEn: json['explanationEn'],
      explanationNp: json['explanationNp'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'questionEn': questionEn,
      'questionNp': questionNp,
      'optionsEn': optionsEn,
      'optionsNp': optionsNp,
      'correctIndex': correctIndex,
      'explanationEn': explanationEn,
      'explanationNp': explanationNp,
      'category': category,
    };
  }
}
