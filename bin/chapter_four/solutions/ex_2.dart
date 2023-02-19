// ignore_for_file: public_member_api_docs, sort_constructors_first
// 2. Create a class named "R

void main() {
  Rectangle rectangle = Rectangle(width: 20, height: 40);
  int areaOfRectangle = rectangle.area();
  int perimeterOfRectangle = rectangle.perimeter();
  print(areaOfRectangle);
  print(perimeterOfRectangle);
}

class Rectangle {
  int width;
  int height;

  Rectangle({
    required this.width,
    required this.height,
  });

  int perimeter() {
    return (height + height) * 2;
  }

  int area() {
    return height * width;
  }
}
