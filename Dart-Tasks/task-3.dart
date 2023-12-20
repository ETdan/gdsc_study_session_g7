import 'dart:io';

class Calculatore {
  double? num1;
  double? num2;

  double add() {
    return this.num1! + this.num2!;
  }

  double substract() {
    return this.num1! - this.num2!;
  }

  double mutiply() {
    return this.num1! * this.num2!;
  }

  double divid() {
    if (this.num2 == 0) {
      throw Exception("can not divide by 0");
    }
    return this.num1! / this.num2!;
  }

  Calculatore(double num1, double num2) {
    this.num1 = num1;
    this.num2 = num2;
  }
}

void main() {
  print("Enter num1: ");
  double? num1 = double.parse(stdin.readLineSync()!);
  print("chose operator(+ - / *): ");
  String? op = stdin.readLineSync()!;
  print("Enter num2: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  var calculatore = new Calculatore(num1, num2);
  calculate(op, calculatore);
}

Future<void>? calculate(String? op, Calculatore calculatore) {
  switch (op) {
    case "+":
      return Future.delayed(
          Duration(seconds: 5), () => print(calculatore.add()));
    case "-":
      return Future.delayed(
          Duration(seconds: 5), () => print(calculatore.substract()));
    case "*":
      return Future.delayed(
          Duration(seconds: 5), () => print(calculatore.mutiply()));
    case "/":
      return Future.delayed(Duration(seconds: 5), () {
        try {
          print(calculatore.divid());
        } catch (e) {
          print(e);
        }
      });
  }
}
// https://dribbble.com/shots/17167182-Car-Shop-Landing-Page/attachments/12267149?mode=media