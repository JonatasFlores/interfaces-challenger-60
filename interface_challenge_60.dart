//CRIE UMA INTERFACE DE PESSOA E EM SEGUIDA CRIE CLASSES
// IMPLEMENTANDO ESSA INTERFACE

import 'models/adult_model.dart';
import 'models/child_model.dart';

void main() {
  final adult = AdultModel(
      workspace: TypeWorkspace.progamador,
      name: "Jonatas",
      age: 23,
      gender: "Masculino",
      height: 1.80);

  final child =
      ChildModel(name: "Nicolas", age: 5, gender: "Masculino", height: 1.10);

  print("Energia: ${adult.showEnergy}");
  adult.eat();
  print("Energia: ${adult.showEnergy}");
  adult.run();
  print("Energia: ${adult.showEnergy}");
  adult.drinkWater();
  adult.drinkWater();
  print("Energia: ${adult.showEnergy}");
  adult.toWork();
  print("Energia: ${adult.showEnergy}");
  adult.toWalk();
  print("Energia: ${adult.showEnergy}");
  adult.run();
  adult.toSleep();
  adult.toWork();

  child.eat();
  child.toWakeUp();
  child.run();
  child.eat();
  child.drinkWater();
  child.toPlay();
  child.toPlay();
  child.run();
  child.eat();
  child.toWalk();
  child.toSleep();
}
