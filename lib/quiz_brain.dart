import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Um macaco é um mamífero', true),
    Question('Segundo o folclore, o macaco ama bananas', true),
    Question('Um macaco é um humano', false),
    Question('Segundo a Teologia, os macacos vieram do humano', false),
    Question('Meu macaco favorito é um filme real', false),
    Question('A macaca é a esposa do macaco, na maioria das vezes', true),
    Question('Houve alguma questão que não involvesse macacos', false),
    Question('O Lula tem 10 dedos', false),
    Question('A teoria de cordas remete a produção de um vestido', false),
    Question('Houve alguma questão que não involvesse macacos', true),
  ];

  void nextQuestion() {
    if (!isFinished()) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool _getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber < _questionBank.length - 1) {
      return false;
    }
    return true;
  }

  bool isCorrectAnswer(bool answer) {
    if (answer == _getCorrectAnswer()) {
      return true;
    }
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
