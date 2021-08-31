import 'package:equatable/equatable.dart';

class AnswerEntity extends Equatable {
  final String? answer;
  final bool? correct;

  const AnswerEntity(this.answer, this.correct);

  @override
  List<Object?> get props => [answer, correct];

  @override
  String toString() {
    return 'AnswerEntity {answer: $answer, correct $correct}';
  }

  Map<String, Object?> toJson() {
    print('AnswerEntity toJson');

    return {
      'answer': answer,
      'correct': correct,
    };
  }

  static AnswerEntity fromJson(Map<String, Object?> json) {
    return AnswerEntity(
      json['answer'] as String,
      json['correct'] as bool,
    );
  }
}
