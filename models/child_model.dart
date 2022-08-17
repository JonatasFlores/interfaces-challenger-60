import '../interfaces/person_interface.dart';

class ChildModel implements PersonInterface {
  ChildModel({
    required this.name,
    required this.age,
    required this.gender,
    required this.height,
  });

  bool _awaked = false;
  int _energy = 10;

  @override
  int age;

  @override
  String gender;

  @override
  double height;

  @override
  String name;

  void toPlay() {
    if (_awaked == true && _energy > 5) {
      print("Brincando");
      _energy -= 5;
      if (_energy <= 0) {
        print("Você deve se alimentar ou beber água para ter mais energia");
      }
    } else {
      print("Você deve acordar antes de ir brincar "
          "ou se alimente para ter energia suficiente para brincar");
    }
  }

  @override
  void drinkWater() {
    if (_awaked == true) {
      print("Bebendo Àgua ");
      _energy++;
    } else {
      print("Acorde primeiro para poder beber água");
    }
  }

  @override
  void eat() {
    if (_awaked == true) {
      print("Comendo");
      _energy += 5;
    } else {
      print("Acorde primeiro para poder comer");
    }
  }

  @override
  void run() {
    if (_awaked == true && _energy >= 4) {
      print("Correndo");
      _energy -= 4;
      if (_energy <= 0) {
        print("Você deve se alimentar ou beber água para ter mais energia");
      }
    } else {
      print("Você deve acordar antes de ir correr "
          "ou se alimente para ter energia suficiente para correr");
    }
  }

  @override
  void toSleep() {
    if (_awaked == true) {
      _awaked = false;
      print("Dormindo");
    }
  }

  @override
  void toWakeUp() {
    if (_awaked == false) {
      _awaked = true;
      print("Acordado");
    }
  }

  @override
  void toWalk() {
    if (_awaked == true && _energy >= 2) {
      print("Caminhando");
      _energy -= 2;
      if (_energy <= 0) {
        print("Você deve se alimentar ou beber água para ter mais energia");
      }
    } else {
      print("Você deve acordar antes de ir caminhar "
          "ou se alimente para ter energia suficiente para caminhar");
    }
  }
}
