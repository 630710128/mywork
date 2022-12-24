import 'dart:io';
import 'dart:math';

//import 'package:flutter/cupertino.dart';

class Game {
  var count = 0;
  var numbergame =1  ;
  bool check = false;
  bool checkpass = false;
  var myList = <int>[];
  Game() {

    while (true) {
      if(check == true){
        break;
      }
      stdout.write("ENTER YOU MAXIMUM NUMBER TO RANDOM => ");
      var enterrandom = stdin.readLineSync();
      print("-------------------------");
      print("     GUESS THE NUMBER    ");
      print("--------------------------");
      var guessrandom = int.tryParse(enterrandom!);
      var answer = Random().nextInt(guessrandom!) + 1;



      while (true) {
if(check == true){
  break;
}

        if(checkpass==true){
          stdout.write("ENTER YOU MAXIMUM NUMBER TO RANDOM => ");
           enterrandom = stdin.readLineSync();
          print("-------------------------");
          print("     GUESS THE NUMBER    ");
          print("--------------------------");
           guessrandom = int.tryParse(enterrandom!);
           answer = Random().nextInt(guessrandom!) + 1;
 checkpass = false;
        }


        stdout.write("Gusee The number between 1 and $guessrandom :");

        var input = stdin.readLineSync();
        var guess = int.tryParse(input!);
        if (guess == null) {
          print("------------------");
          print("pls entry u number");
          print("------------------");
        }
        else {
          if (guess > answer) {
            print("------------------------");
            print("your number is = $guess;");
            print("Number is to high");
            print("-------------------------");
            count++;
          }
          else if (guess == answer) {
            print("-------------------------------");
            print("YES YOU DONE! NUMBER IS CORRECT!!!!!");

            print("--------------------------------------------------------");
            print("          THE END  ,TOTAL GUESSES = $count              ");
            print("---------------------------------------------------------");
 myList.add(count);

            while (true) {

              print("play again>?(y)or(no)");
              var choice = stdin.readLineSync();
              if (choice == "y") {
                numbergame++;
                count=0;
checkpass=true;
                break;
              }
              else if (choice == "n") {
                check = true;
                break;
              }
            }
          }

          else {
            print("-------------------------");
            print("your number is = $guess");
            print("Number is to low");
            print("--------------------------");
            count++;
          }
          if (check == true) {
            break;
          }
        }
      }
    }
  }

  void printmtlist(){
    print("you've played $numbergame games");
    for(int i = 0;i<myList.length;i++){
      i ++;
      stdout.write('game #$i ');
      i--;
      stdout.write(myList[i] );
      stdout.write(" guess");
      print('');

    }
  }
}
