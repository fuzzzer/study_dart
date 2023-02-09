// 6. Create a list of numbers from 1 to 10 and print the sum of all the elements.

void main() {
  List<int?> numList = [];
  int sumOfAll = 0;
  for (int i = 1; i <= 10; i++) {
    numList.add(i);
    sumOfAll += i;
  }
  print(sumOfAll);
}
