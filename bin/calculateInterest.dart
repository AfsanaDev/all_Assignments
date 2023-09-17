import 'dart:io';
import 'dart:math' as math;

var compoundInterest = (int amount, int year, double rate){
  double compInterest = (amount * (math.pow((rate/100+1), year))) as double ;
  double ci = compInterest - amount;
  print("");
  print("Total amount :  , Year   , interest rate   , Compound interest amount");

  stdout.write("_______________________________________________________________________");
  print("");
  print("      $amount   ,     $year   ,       $rate%                $ci");

  print("");
  //stdout.write("_______________________________________________________________________");
};


var simpleIntrestRate = ( int totalAmount, int numberOfYears, double interestRate ){
  double simpleInterest = (totalAmount * numberOfYears *interestRate)/100;
  stdout.write("Total amount :    , Year   , interest rate   , Simple interest amount");
  print("");
  stdout.write("______________________________________________________________________");
  print("");
  stdout.write("      $totalAmount   ,     $numberOfYears   ,       $interestRate%                $simpleInterest");
  print("");
  stdout.write("_______________________________________________________________________");


  //print(simpleInterRest);
};


void main(){


 simpleIntrestRate(100000,3,5);
 print("");
 compoundInterest(100000,3,5);
}
