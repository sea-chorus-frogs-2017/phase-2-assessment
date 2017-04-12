var Student = function(args) {
  this.firstName = args["firstName"];
  this.scores = args["scores"]
  var totalScore = this.scores.reduce(function(total, score) {
    return total + score;
  });
  this.averageScore = function() {
    return Math.floor(totalScore / this.scores.length);
  };
  this.letterGrade = function() {
    if (this.averageScore() >= 90) { return "A" } else
    if (this.averageScore() >= 80) { return "B" } else
    if (this.averageScore() >= 70) { return "C" } else
    if (this.averageScore() >= 60) { return "D" } else
    return "F";
  }
}
