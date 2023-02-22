//Write a function that takes a string parameter and returns a closure that takes a string
//parameter and returns a new string that includes the input string followed by the second
//input string. Use the closure function to concatenate "Hello, " with "world!".

Function createString(String name) {
  return (String another) => '$name $another';
}

void main() {
  Function addWorld = createString("Hello");
  print(addWorld("World!"));
}
