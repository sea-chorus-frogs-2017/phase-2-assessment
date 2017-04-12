var Student = function({firstName, scores}) {
  this.firstName = firstName;
  this.scores = scores;
  this.averageScore = function() {
    var sum = 0
    var numScores = scores.length
    for(var i = 0; i < numScores; i++) {
      sum += scores[i]
    }
    return Math.floor(sum / numScores)
  };
  this.letterGrade = function() {
    if (this.averageScore() >= 90) {
      return "A";
    } else if (this.averageScore() >= 80) {
      return "B";
    } else if (this.averageScore() >= 70) {
      return "C";
    } else if (this.averageScore() >= 60) {
      return "D";
    } else {
      return "F";
    }
  };
}

