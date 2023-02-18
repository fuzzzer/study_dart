class Friendship {
  void socialization(List<HumanBeing> name) {
    for (int i = 0; i < name.length; i++) {
      if (name[i].energyLevel <= 50) {
        name[i].happinesLevel += 10;
      } else if (name[i].energyLevel <= 20) {
        name[i].happinesLevel += 5;
      } else if (name[i].energyLevel > 50) {
        name[i].happinesLevel += 30;
        name[i].socialCapital += 1;
      }
    }
  }

  void deepTalk(HumanBeing name, HumanBeing name2) {
    print("This is how I feel");
  }
}

abstract class HumanBeing implements Friendship {
  int empathy;
  String name;
  int age;
  int happinesLevel;
  int energyLevel;
  int socialCapital;
  int numberOfFriends;
  Set<HumanBeing> friends;
  HumanBeing(
      {required this.empathy,
      required this.name,
      required this.age,
      required this.happinesLevel,
      required this.socialCapital,
      required this.numberOfFriends,
      required this.friends,
      required this.energyLevel});

  @override
  String toString() {
    return 'Information: {Name: $name, Age: $age, Happiness Level: $happinesLevel, Friends: $friends}';
  }
}
