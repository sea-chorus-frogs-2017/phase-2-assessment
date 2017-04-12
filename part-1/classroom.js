var Classroom = function(students) {
  this.students = students;
  this.find = function(searchName) {
    var searchIndex
    var numStudents = this.students.length;
    for (i = 0; i < numStudents; i++) {
      if (students[i].firstName == searchName) {
        searchIndex = i;
      }
    }
    return this.students[searchIndex];
  };
}

var Student = function({firstName, scores}) {
  this.firstName = firstName;
  this.scores = scores;
  this.averageScore = function() {
    var sum = 0
    var numScores = scores.length
    for(i = 0; i < numScores; i++) {
      sum += scores[i]
    }
    return Math.floor(sum / numScores)
  };
  this.letterGrade = function() {
    if (this.averageScore() >= 90) {
      letterGrade = "A";
    } else if (this.averageScore() >= 80) {
      letterGrade = "B";
    } else if (this.averageScore() >= 70) {
      letterGrade = "C";
    } else if (this.averageScore() >= 60) {
      letterGrade = "D";
    } else {
      letterGrade = "F";
    }
    return letterGrade;
  };
}

jalil  = new Student({firstName: "Jalil", scores: [100, 100]});
    irene  = new Student({firstName: "Irene", scores: [95, 95]});
    kelvin = new Student({firstName: "Kelvin", scores: [94, 94]});
    myra   = new Student({firstName: "Myra", scores: [70, 70]});

    // Assign classroom
    classroom = new Classroom([jalil, irene, kelvin, myra]);

console.log(classroom.find("Myra"))
