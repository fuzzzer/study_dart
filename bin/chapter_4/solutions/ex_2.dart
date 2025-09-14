class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);

  int getPerimeter() {
    return 2 * (width + height);
  }

  int getArea() {
    return width * height;
  }
}
