part of 'deets_cubit.dart';

enum DeetStatus { loading, success, updated, updatedField, failure }

class DeetsState extends Equatable {
  const DeetsState._({
    this.status = DeetStatus.loading,
    this.question = const Question(
      question: 'New Question',
      type: 'Multiple Choice',
      points: 500,
      answers: [
        Answer(answer: 'answer1', correct: true),
        Answer(answer: 'answer2', correct: false),
        Answer(answer: 'answer3', correct: false),
        Answer(answer: 'answer4', correct: false),
      ],
    ),
  });
  const DeetsState.failure() : this._(status: DeetStatus.failure);

  const DeetsState.loading() : this._();

  const DeetsState.success(Question question)
      : this._(status: DeetStatus.success, question: question);

  const DeetsState.updated(Question question)
      : this._(status: DeetStatus.updated, question: question);

  const DeetsState.updatedField(Question question)
      : this._(status: DeetStatus.updated, question: question);

  final Question question;
  final DeetStatus status;

  @override
  List<Object> get props => [status, question];
}
