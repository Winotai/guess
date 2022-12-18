//ignore_for_file: avoid_print

import 'dart:math';

//enumeration จำเป็นค่อยใช้
enum GuessResult{
  correct,tooHigh,tooLow
}

class Game{
  final int answer; // = Random().nextInt(100) + 1;
  final String name;
  final int age;
  int _totalGuess = 0;

  //constructor
  Game({required int maxRandom,required this.name,required this.age}) :
        answer = Random().nextInt(maxRandom) + 1{
    print('Answer is $answer');
  }

  GuessResult doGuess(int guess){
    _totalGuess++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  //getter
  int get totalGuesses{
    return _totalGuess;
  }
}