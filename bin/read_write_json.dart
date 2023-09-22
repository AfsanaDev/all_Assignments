import 'dart:convert';
import 'dart:io';

void main(){

  var person = File('assets/Person.json');

  person.readAsString().then((value) {
    var data = jsonDecode(value);
    List<Person> person =[];

    for( var names in data){
      var persons = Person( names['firstName'], names['lastName'], names['address']);
      person.add(persons);
    }

    for( var p in person){
      // print(p.firstName);
      // print(p.lastName);
      // print(p.address);
      p.show();


    }

  });
}

class Person {
  String? firstName;
  String? lastName;
  String? address;

  Person(this.firstName, this.lastName, this.address);

  void show(){
    print("Full name: $firstName $lastName");
    print("Address: $address");
    print("");
  }

}