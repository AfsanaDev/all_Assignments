import 'dart:async';
import 'dart:io';
import '../assets/Person.json';
import 'package:test/expect.dart';

void main() async{
  final fileName = 'assets/Person.json';

  var personFile = File(fileName);

  personFile.readAsString().then((String contents){
    prints(contents);
  });
  
  //var file = await File(fileName).writeAsString();
}
