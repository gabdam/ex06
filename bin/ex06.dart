import 'package:ex06/functions.dart';

ex6_1() {
  String w = "hello";
  print("1) Is the word $w a palindrome ? --> ${palindrome(w)}");
  w = "laval";
  print("Is the word $w a palindrome ? --> ${palindrome(w)}");
  print("===================================================");
}

ex6_2() {
  var duration = time(); //call our function
  print("2) ${duration} days have passed between March 5th, 1999 and June 10th, 2003!"); //print the difference in days
  print("===================================================");
}

ex6_3() {
  int grade = 95; //Trying with a result of 95
  print("3) A grade of $grade is converted to a ${convertGrades(grade)}");
  grade = 67;
  print("A grade of $grade is converted to a ${convertGrades(grade)}");
  grade = 55;
  print("A grade of $grade is converted to a ${convertGrades(grade)}");    
  grade = 79;
  print("A grade of $grade is converted to a ${convertGrades(grade)}");  
  grade = 62;
  print("A grade of $grade is converted to a ${convertGrades(grade)}");  
  print("===================================================");
  
}

ex6_4() {
  //dans une fonction faire les 3 listes et les combiner en une seule pour retourner une liste dans main
  print("4) Differents names:");
  List names = ["Luchiano", "Jean-Loup", "Anthony", "Olivier", "Quinntin", "Maxime", "Genevieve","Jacques", "Marie-France"];
  print(names);
  print("");
  print("Names sorted by length. Shorter than 8 letters, longer than 8 letters and equal to 8 letters.");
  print(sortNames(names));
  print("===================================================");
}

ex6_5() {
  print("5) Hockey players sorted by team:");
  print(sortClubs());
}

main() {
  ex6_1();
  ex6_2();
  ex6_3();
  ex6_4();
  ex6_5();
}
