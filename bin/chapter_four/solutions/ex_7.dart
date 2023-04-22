// 7. Create a class called Book with properties such as title, author, pages, and price. Add a method called getDiscount that calculates and returns the discount based on the number of pages.
void main() {
  Book shakespeare = Book(
      title: "Hamlet", author: "William Shakespeare", pages: 193, price: 20);
  double discountShakespeare = shakespeare.getDiscount();
  print('Discounted price is: ${(shakespeare.price - discountShakespeare)}');
  Book ulysses =
      Book(title: "Ulysses", author: "James Joyce", pages: 900, price: 40);
  double discountUlysses = ulysses.getDiscount();
  print('Discounted price is: ${(ulysses.price - discountUlysses)}');
}

class Book {
  String title;
  String author;
  int pages;
  int price;

  Book(
      {required this.title,
      required this.author,
      required this.pages,
      required this.price});

  double getDiscount() {
    double discountValue;
    double noDiscount = 0;
    if (pages > 500) {
      discountValue = (price * 0.2);
    } else if (pages > 300 && pages <= 500) {
      discountValue = (price * 0.15);
    } else if (pages > 200 && pages <= 300) {
      discountValue = (price * 0.1);
    } else {
      discountValue = noDiscount;
    }
    return discountValue;
  }
}
