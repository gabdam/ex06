library ex06;

//Exercice 1
bool palindrome(String w) {
  for (int i = 0; i < w.length ~/ 2; i++) {           // Loop to test each letter
    if (w[i] != w[w.length - i - 1]) {
      return false; 
    }
  }
  return true;
}

//Exercice 2
int time() {
  var initialDate = new DateTime(1999, 3, 5);       // First date
  var finalDate = new DateTime(2003, 6, 10);        // Second date
  var duration = finalDate.difference(initialDate); // Find difference between dates
  return duration.inDays;
}

//Exercice 3
/*
String convertGrades(int grade) {
  if (grade >= 88 && grade < 100) {   // The range for which the grade will be converted
    return "A";
  }
  if (grade >= 77 && grade < 88) {
    return "B";
  }
  if (grade >= 67 && grade < 77) {
    return "C";
  }
  if (grade >= 60 && grade < 67) {
    return "D";
  }
  //if (grade < 60){
  //  return "E";
  //}
  return "E";
}
 */

String convertGrades(int grade) {
  if (grade >= 88 && grade < 100) return "A";
  else if (grade >= 77 && grade < 88) return "B";
  else if (grade >= 67 && grade < 77) return "C";
  else if (grade >= 60 && grade < 67) return "D";
  return "E";
}

//Exercice 4
List sortNames(List names) {
  var short = new List();         // List for the tree categories
  var equal = new List();
  var long = new List();
  var sortedNames = new List();
  for (int i = 0; i < names.length; i++) {
    if (names.elementAt(i).length < 8) {
      short.add(names.elementAt(i));
    } else if (names.elementAt(i).length == 8) {
      equal.add(names.elementAt(i));
    } else if (names.elementAt(i).length > 8) {
      long.add(names.elementAt(i));
    } 
  }
  sortedNames.add(short);
  sortedNames.add(long);
  sortedNames.add(equal);
  return sortedNames;                 // Retourner les noms classés dans une seule liste 
}

//Exercice 5
List sortClubs() { 
  var roster = {"Subban": "Canadiens",          //Map des joueurs avec leur équipe respective
                "Galchenyuk": "Canadiens",
                "Gallagher": "Canadiens",
                "Ovechkin": "Capitals",
                "Chimera": "Capitals",
                "Marleau": "Sharks",
                "Karlsson": "Ducks",};
  var players = roster.keys.toList(); //On classe les joueurs et leur équipe dans deux listes différentes
  var team = roster.values.toList();

  // Remove duplicate team names
  for (int i = 0; i < team.length; i++) {  //Check every element in the list one by one and keep index i
    for (int j = 0; j < team.length; j++) { //Check every element in the list one by one and keep index j
      if (team.elementAt(j) == team.elementAt(i) && j != i) { // Compare if the element at i equals the element at j, if i is not equal to j
        team.remove(team.elementAt(j)); ////If element at i = element at j, remove that element, team name
        j--;
      }
    }
  }   
  team.sort(); // Sort teams alphabetically
   
  for (int i = 0; i < team.length; i = i + 2) {                     
    team.insert(i + 1, new List());  // To insert the players list after the team name
  }

  for (int i = 0; i < players.length; i++){                       
    int index = team.indexOf(roster[players.elementAt(i)]);
    team.elementAt(index+1).add(players.elementAt(i));                  
  }

  return team;
}
