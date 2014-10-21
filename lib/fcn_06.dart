library ex06;

//Exercice 1
bool palindrome(String w) {
	for(int i = 0; i < w.length ~/ 2; i++) {           // Loop to test each letter
      if(w[i] != w[w.length - i - 1]) {
        return false; 
      }
    }
    return true;
}

//Exercice 2
int time(){
  var initialDate = new DateTime(1999, 3, 5);       // First date
  var finalDate = new DateTime(2003, 6, 10);        // Second date
  var duration = finalDate.difference(initialDate); // Find difference between dates
  return duration.inDays;
}

//Exercice 3
String convertGrades(int grade) {
  if(grade >= 88 && grade < 100){   // The range for which the grade will be converted
    return "A";
  }
  if(grade >= 77 && grade < 88){
    return "B";
  }
  if(grade >= 67 && grade < 77){
    return "C";
  }
  if(grade >= 60 && grade < 67){
    return "D";
  }
  if(grade < 60){
    return "E";
  }

}

//Exercice 4
List sortNames(List names){
  var short = new List();         // List for the tree categories
  var equal = new List();
  var long = new List();
  var sortedNames = new List();
  for(int i = 0; i < names.length; i++) {
    if (names.elementAt(i).length < 8){
      short.add(names.elementAt(i));
    }
    if (names.elementAt(i).length == 8){
      equal.add(names.elementAt(i));
    }
    if (names.elementAt(i).length > 8){
      long.add(names.elementAt(i));
    }
    
  }
  sortedNames.add(short);
  sortedNames.add(long);
  sortedNames.add(equal);
  return sortedNames;                 // Retourner les noms classés dans une seule liste 
}

//Exercice 5


Map sortedTeams(List players, List team){ 
    
  team.sort(); // Sort teams alphabetically   
  var sortedTeamsWithPlayers = new Map();
  for (var i = 0; i < 3; i++) {
    sortedTeamsWithPlayers [team[i]] = players[i];
  }
  return sortedTeamsWithPlayers;
}


