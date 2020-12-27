import 'Question.dart';
import 'Option.dart';

class QuizManager2 {
  QuizManager2() {
    _questions.add(Question('1984 Kitabının Yazarı Kimdir?', [
      Option('George Orwell', 10),
      Option('Oscar Wild', 5),
      Option('Charles Dickens', 0),
      Option('Andy Weir', -5),
    ]));

    _questions.add(Question('Beyaz Diş Kitabının Yazarı Kimdir?', [
      Option('Jack London', 10),
      Option('Oscar Wild', 5),
      Option('Fyodor Dostoyevski', 0),
      Option('Charles Dickens', -5),
    ]));
    _questions.add(Question('İçimizdeki Şeytan Kitabının Yazarı Kimdir?', [
      Option('Sabahattin Ali', 10),
      Option('Orhan Kemal', 5),
      Option('Turgut Uyar', 0),
      Option('Nazım Hikmet', -5),
    ]));

    _questions.add(Question('Ateşten Gömlek Kitabının Yazarı Kimdir?', [
      Option('Halide Edip Adıvar', 10),
      Option('Orhan Kemal', 5),
      Option('Sabahattin Ali', 0),
      Option('Namık Kemal', 0),
    ]));
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}