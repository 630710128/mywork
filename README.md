
import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var anwser = r.nextInt(101) + 1;

  stdout.write('between 1 and 100 (inclusive) = ');
  var i = 0;

  while (true) {

    var input = stdin.readLineSync();
    print('your input is $input');
    if (input == null) {
      print("pls input number");


    }

    var guess = int.tryParse(input!); //เเปลงเป็น int;
    if (guess == null) {
      print("input error pls enter number");

    }
     else if (guess== anwser){
      i++;
      print("yes! it's pass your try is wrong is  $i");
      break;
    }
     else if (guess >anwser){
       i++;
       print("$guess To high");


     }else{
       i++;
       print("$guess To less");


     }
  }
}
