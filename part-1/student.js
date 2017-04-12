var Student = function(args) {
  this.firstName = args.firstName;
  this.scores = args.scores;
};

Student.prototype.averageScore = function() {
  var totalScore = this.scores.reduce(function(total, score) {
    return total + score;
  });
  return Math.floor(totalScore / this.scores.length);
};

Student.prototype.letterGrade = function() {
  var scores = [[90, "A"], [80, "B"], [70, "C"], [60, "D"], [0, "F"]];
  for (var i = 0, length = scores.length; i < length; i++) {
    var score = scores[i];
    if (this.averageScore() >= score[0]) {
      return score[1];
    }
  }
};
