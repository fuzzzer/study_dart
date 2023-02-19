// 10. Write a program that takes two numbers as input and calculates the area and perimeter of a rectangle.

double calculateArea(a, b) {
  double result = a * b;
  return result;
}

double calculatePerimeter(a, b) {
  double result = (a + b) * 2;
  return result;
}

void main() {
  double width = 20;
  double height = 15;

  double areaIs = calculateArea(width, height);
  print('The area of a rectangle is $areaIs');

  double perimeterIs = calculatePerimeter(width, height);
  print('The perimeter of a rectangle is $perimeterIs');
}
