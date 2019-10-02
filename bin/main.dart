import 'dart:io';

void main() {
  List<String> names = ["Kimiko", "Raj", "Anu", "Paul"];
  func(names);
// Write a program to allow user to modify the given list as shown below.
// Add Student, remove student and stop the program
}

void func(List list) {
  String input;
  while (input != 'e') {
    print('you want to add, remove or exit ?');
    input = stdin.readLineSync();
    if (input == 'a') {
      print('what is the name of the student u want to add?');
      var x = stdin.readLineSync();
      list.add(x);
      for (var i in list) {
        print(i);
      }
      input = stdin.readLineSync();
    } else if (input == 'r') {
      print('what student do want to remove?');
      var x = stdin.readLineSync();
      list.remove(x);
      for (var i in list) {
        print(i);
      }
      input = stdin.readLineSync();
    }
  }
}

//[Kimiko, Raj, Anu, Paul]
//(a)dd or (r)emove a student, or (e)xit?
//a
//What is the name of the student you want to add?
//Arnav
//[Kimiko, Raj, Anu, Paul, Arnav]
//(a)dd or (r)emove a student, or (e)xit?
//r
//What is the name of the student you want to remove?
//Raj
//[Kimiko, Anu, Paul, Arnav]
//(a)dd or (r)emove a student, or (e)xit?
//r
//What is the name of the student you want to remove?
//Paul
//[Kimiko, Anu, Arnav]
//(a)dd or (r)emove a student, or (e)xit?
//e
