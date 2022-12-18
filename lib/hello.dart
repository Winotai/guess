//ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

var count = 0;

void main() {
  print('╔══════════════════════════════════════════════════');
  print('║                GUESS THE NUMBER');
  print('╟──────────────────────────────────────────────────');
  var r = Random();
  var answer = r.nextInt(100) + 1; //สุ่ม20-50(31)+20
  var isCorrect = false;

  do {
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if (input == null) {
      //print('Error, input is NULL');
      return;
    }
    var guess = int.tryParse(input);
    if (guess == null) {
      //print('Input error, please enter numbers only');
      continue;
    }
    count += 1;
    isCorrect = doGuess(guess, answer);
  } while (!isCorrect);
}

bool doGuess(int guess, int answer) {
  if (guess == answer) {
    //count++;
    print('║ ➜ $guess is CORRECT ❤, total guesses : $count');
    print('╟──────────────────────────────────────────────────');
    print('║                     THE END');
    print('╚══════════════════════════════════════════════════');
    return true;
  } else if (guess > answer) {
    //count++;
    print('║ ➜ $guess is TOO HIGH! ▲');
    print('╟──────────────────────────────────────────────────');
    return false;
  } else {
    //count++;
    print('║ ➜ $guess is TOO LOW! ▼');
    print('╟──────────────────────────────────────────────────');
    return false;
  }
}
//int.tryParse(intput);
//print('Your input is $input');
