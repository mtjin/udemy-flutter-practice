import 'question.dart';

class QuizBrain {
  // 질문 번호 (핫리로드시 state를 보존하기때문에 이 값을 보존함 0부터 다시 시작하고싶으면 핫스타트 사용해야함)
  int _questionNumber = 0;

  // 캡슐화시킴
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  // 다음 질문 불러오기
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      // 질문 개수이내
      _questionNumber++;
    }
  }

  // _questionBank을 캡슐화 시켰고 변경운 불가능하게하고 불러만 오게끔 구현
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionNumber() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
