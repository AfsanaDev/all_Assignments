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

class personInfo{
  final String firstName;
  final String lastName;
  final String address;
  final String education;

   personInfo({required this.firstName, required this.lastName, required this.address, required this.education});

  factory personInfo.fromJson(Map<String, dynamic>json){
    return personInfo(firstName: "afsana",
        lastName: "akter",
        address: "ctg",
        education: "Bsc in cse");
  }

 void show(){
    print("Full name: $firstName $lastName");
    print("Education: $education");
    print("Address: $address");
 }

}
