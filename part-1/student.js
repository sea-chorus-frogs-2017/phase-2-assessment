var Student = function(student) {
  this.firstName = student.firstName;
  this.scores = student.scores;
  }




  Student.prototype.averageScore = function() {
    var scoreSum = this.scores.reduce((previous, current) => current += previous);
    var avg = scoreSum / this.scores.length;
    return Math.floor(avg);
  }
