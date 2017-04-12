var Student = function(studentInfo) {
  this.firstName = studentInfo.firstName;
  this.scores = studentInfo.scores;
}

Student.prototype.averageScore = function() {
  var sum = 0;
  for(var i = 0; i < this.scores.length; i++ ) {
    sum += this.scores[i];
  }
  var average = (sum / this.scores.length);
  return Math.floor(average);
}

Student.prototype.letterGrade = function() {
  var score = this.averageScore();
  switch (true) {
    case (score >= 90):
      return "A";
      break;
    case (score >= 80 && score < 90):
      return "B";
      break;
    case (score >= 70 && score < 80):
      return "C";
      break;
    case (score >= 60 && score < 70):
      return "D";
      break;
    case (score < 60):
      return "F";
      break;
  }
}
