//ignore_for_file: avoid_print

import 'dart:io';
import 'game.dart';

//List<int> myList = [];
var myList = <int>[];
var len = myList.length;
//myList.add(123);
var off = false;
void main() {
  var game = Game(); //maxRandom: 10000,name:'Winotai',age: 21
  late GuessResult guessResult;

  print('╔══════════════════════════════════════════════════');
  print('║                GUESS THE NUMBER');
  print('╟──────────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and 100: ');
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
    guessResult = game.doGuess(guess);
    if (guessResult == GuessResult.correct) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
      print('╟──────────────────────────────────────────────────');
      print('║                     THE END');
      print('╚══════════════════════════════════════════════════');
      myList.add(game.totalGuesses);
      do {
        stdout.write('Play again? (Y/N): ');
        var pass = stdin.readLineSync();
        if (pass == 'Y' || pass == 'y') {
          off = gameon(pass);
        } else if (pass == 'N' || pass == 'n') {
          print("YOU've played $len games");
          for (var i = 1; i <= myList.length; i++) {
            var count = myList[i - 1];
            print("🚀 Game #$i: $count guesses");
          }
          exit(0);
        } else {
          continue;
        }
      } while (!off);
    } else if (guessResult == GuessResult.tooHigh) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟──────────────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟──────────────────────────────────────────────────');
    }
  } while (guessResult != GuessResult.correct);
}

gameon(var pass) {
  var game = Game(); //maxRandom: 10000,name:'Winotai',age: 21
  late GuessResult guessResult;

  print('╔══════════════════════════════════════════════════');
  print('║                GUESS THE NUMBER');
  print('╟──────────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and 100: ');
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
    guessResult = game.doGuess(guess);
    if (guessResult == GuessResult.correct) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
      print('╟──────────────────────────────────────────────────');
      print('║                     THE END');
      print('╚══════════════════════════════════════════════════');
      myList.add(game.totalGuesses);

      do {
        stdout.write('Play again? (Y/N): ');
        var pass = stdin.readLineSync();
        if (pass == 'Y' || pass == 'y') {
          off = gameon(pass);
        } else if (pass == 'N' || pass == 'n') {
          print("YOU've played $len games");
          for (var i = 1; i <= myList.length; i++) {
            var count = myList[i - 1];
            print("🚀 Game #$i: $count guesses");
          }
          exit(0);
        } else {
          continue;
        }
      } while (!off);
    } else if (guessResult == GuessResult.tooHigh) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟──────────────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟──────────────────────────────────────────────────');
    }
  } while (guessResult != GuessResult.correct);
}
