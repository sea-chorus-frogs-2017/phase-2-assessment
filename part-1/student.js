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

student = new Student({firstName: "Lysette", scores: [100, 100, 100, 4, 100]})
console.log(student.averageScore());
console.log(student.letterGrade());

