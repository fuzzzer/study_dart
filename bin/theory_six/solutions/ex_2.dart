// 2. Write a function that takes two positional parameters (a and b),
//    and one named parameter "operation" with a default value of "add". If "operation" is "add",
// return the sum of a and b, and if "operation" is "subtract",
//return the difference of a and b. Call this function with different arguments to test it.

void main() {
  num addOrSubstact(int a, int b, {String operation = "add"}) =>
      operation == "add"
          ? a + b
          : operation == "substract"
              ? a - b
              : operation == "product"
                  ? a * b
                  : operation == "divide"
                      ? a / b
                      : throw ArgumentError("Invalid operation: $operation");

  print(addOrSubstact(
    5,
    10,
  ));
  print(addOrSubstact(100, 25, operation: "product"));
}
