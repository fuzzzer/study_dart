Function addNumbers(int x) {
  return (int y) => x + y;
}

void main() {
  Function addTen = addNumbers(10);
  Function addTwenty = addNumbers(20);
  print(addTen(5)); // output: 15
  print(addTwenty(5));
}

// In this example, addNumbers is a function that returns another function that adds the 
//input parameter x to its own input parameter y. We then assign the result 
//of calling addNumbers(10) to addTen, which creates a closure that remembers the value of x (in this case, 10).
// When we call addTen(5), it adds 5 to the remembered value of x (10), resulting in an output of 15.

