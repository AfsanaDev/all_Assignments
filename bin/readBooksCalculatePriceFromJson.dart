import 'dart:convert';
import 'dart:io';

import 'package:test/expect.dart';
void main(){
  var myBooks= File("assets/books.json");

  myBooks.readAsString().then((value) {
    var bookList = jsonDecode(value);
    prints(bookList);
    List<BookList> bookLists =[];
    for( var bookNames in bookList ){
      var books = BookList( bookNames['title'], bookNames['author'], bookNames['price']);
      bookLists.add(books);
      //print(bookList); Amar bookList a sob info ache.

    }


    for( var bl in bookLists)
    {
      //totalPrice = totalPrice +(bl.price);
      bl.show();

    }

    //print("Total price is : $totalPrice");

  });
}

class BookList {
  String? title;
  String? author;
  int price;

  BookList(this.title, this.author, this.price);


  void show(){
    print("Book name is : $title");
    print("Book author name is : $author");
    print("Book price is : $price");
    print("");
 
  }

}
