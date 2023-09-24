import 'dart:io';
import 'dart:math' as math;
import 'dart:math';

var compoundInterest = (int amount, int year, double rate){
  double compInterest = (amount * (math.pow((1+rate/100), year))) as double ;

  double ci =( compInterest - amount);

  print("");
  print("Total amount :  , Year   , interest rate   , Compound interest amount");
  //
  // stdout.write("_________________________");
  // print("");
  print("      $amount   ,     $year   ,       $rate%                $ci");

  print("");
  //stdout.write("_________________________");


};


var simpleIntrestRate = ( int totalAmount, int numberOfYears, double interestRate ){

  double simpleInterest = (totalAmount * numberOfYears *interestRate)/100;
  stdout.write("Total amount :    , Year   , interest rate   , Simple interest amount");
  // print("");
  // stdout.write("________________________");
  print("");
  stdout.write("      $totalAmount   ,     $numberOfYears   ,       $interestRate%                $simpleInterest");
  // print("");
  // stdout.write("_________________________");


  //print(simpleInterRest);
};


void main(){

  for (int i = 0 ; i<=5; i++) {
    int min = 100000;
    int max = 1000000;
    int randomnum = (min + Random().nextInt(max + 1)) as int;
    // print("$randomnum");
    print("");
    simpleIntrestRate(randomnum,4,6);
    print("");


    compoundInterest(randomnum,3,5);
  }

}