// In Dart, a lambda function is another name for an anonymous function, which is a function
// that has no name and can be assigned to a variable. Here is an example of a lambda function in Dart:

void main() {
  var myList = [1, 2, 3, 4, 5];

  // Using a lambda function to multiply each element in a list by 2
  var doubledList = myList.map((number) => number * 2);

  print(doubledList); // Output: (2, 4, 6, 8, 10)
}

// In this example, we define a lambda function using the map method on a list.
// The lambda function is (number) => number * 2, which multiplies each element in the list by 2.
// We then print out the doubled list to the console.

// Lambda functions are useful for writing short, concise code that can be easily reused.
// They are commonly used in functional programming and in event-driven programming,
// where they can be used as callbacks for event handlers.
