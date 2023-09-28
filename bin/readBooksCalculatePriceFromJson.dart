import 'dart:convert';
import 'dart:io';

void main() {
  var myBooks = File("assets/books.json");

  myBooks.readAsString().then((value) {
    var bookList = jsonDecode(value);
    //prints(bookList);
    List<BookList> bookLists = [];

    for (var bookNames in bookList) {
      var books =
          BookList(bookNames['title'], bookNames['author'], bookNames['price']);
      bookLists.add(books);
    }
    //print(bookList);

    List<BookList> price = [];

    for (var p in bookList) {
      var BookPrices = BookList.prices(p['price']);
      price.add(BookPrices);

      //var tPrice = BookPrices.where();
    }


    var totalPrice = 0;
    for (var bl in bookLists) {
      //totalPrice = totalPrice +(bl.price);
      bl.show();
      //print(totalPrice);
    }
    try {
      totalPrice = bookLists.where((element) {
        element.price;
        {
          totalPrice = totalPrice + int.parse(totalPrice as String);
          print("Total price is : $totalPrice");
          throw '';
        }
      }) as int;
    } catch (e) {
      print(e);
    }

    //return totalPrice;
  });
}

class BookList {
  String? title;
  String? author;
  int price;

  BookList(this.title, this.author, this.price);

  BookList.prices(this.price);

  void show() {
    print("Book name is : $title");
    print("Book author name is : $author");
    print("Book price is : $price");
    print("");
    //print("Total books price are :$");
  }
}
