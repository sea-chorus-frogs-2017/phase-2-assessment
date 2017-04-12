var Student = function(student) {
  this.firstName = student.firstName;
  this.scores = student.scores;
  }




  Student.prototype.averageScore = function() {
    var scoreSum = this.scores.reduce((previous, current) => current += previous);
    var avg = scoreSum / this.scores.length;
    return Math.floor(avg);
  }

Student.prototype.letterGrade = function() {
  avgScore = this.averageScore();
  switch(true) {
    case (avgScore >= 90):
      return 'A';
      break;
    case (avgScore >= 80):
      return 'B';
      break;
    case (avgScore >= 70):
      return 'C';
      break;
    case (avgScore >= 60):
      return 'D';
      break;
    default:
      return 'E';
      break;
  }
}
