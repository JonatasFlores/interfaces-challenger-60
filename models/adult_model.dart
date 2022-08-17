import '../interfaces/person_interface.dart';

enum TypeWorkspace { progamador, vendedor, gamer, gerente }

class AdultModel implements PersonInterface {
  TypeWorkspace workspace;
  AdultModel({
    required this.workspace,
    required this.name,
    required this.age,
    required this.gender,
    required this.height,
  });

  int _energy = 5;

  int get showEnergy {
    return _energy;
  }

  void toWork() {
    //TRABALHAR
    if (_awaked == true && _energy > 5) {
      print("Trabalhando");
      _energy -= 5;
      if (_energy <= 0) {
        print("Você deve se alimentar ou beber água para ter mais energia");
      }
    } else {
      print("Acorde Coma e Beba água para ter energia e trabalhar");
    }
  }

  bool _awaked = true;

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
      _energy += 3;
    } else {
      print("Acorde primeiro para poder comer");
    }
  }

  @override
  void run() {
    if (_awaked == true && _energy > 2) {
      print("Correndo");
      _energy -= 2;
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
    if (_awaked == true && _energy > 1) {
      print("Caminhando");
      _energy -= 1;
      if (_energy <= 0) {
        print("Você deve se alimentar ou beber água para ter mais energia");
      }
    } else {
      print("Você deve acordar antes de ir caminhar "
          "ou se alimente para ter energia suficiente para caminhar");
    }
  }

  @override
  int age;

  @override
  String gender;

  @override
  double height;

  @override
  String name;
}
